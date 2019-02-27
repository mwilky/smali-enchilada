.class public Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextLine$DecorationInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mActivePaint:Landroid/text/TextPaint;

.field private mAddedWidth:F

.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mComputed:Landroid/text/PrecomputedText;

.field private final mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

.field private final mDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextLine$DecorationInfo;-><init>(Landroid/text/TextLine$1;)V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    return-void
.end method

.method private adjustHyphenEdit(III)I
    .locals 2

    move v0, p3

    if-lez p1, :cond_0

    and-int/lit8 v0, v0, -0x19

    :cond_0
    iget v1, p0, Landroid/text/TextLine;->mLen:I

    if-ge p2, v1, :cond_1

    and-int/lit8 v0, v0, -0x8

    :cond_1
    return v0
.end method

.method private countStretchableSpaces(II)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    iget-boolean v2, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, v0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v0

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    :goto_1
    invoke-direct {p0, v2}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 16

    move-object/from16 v12, p0

    iget v0, v12, Landroid/text/TextLine;->mDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v13, p4

    if-ne v1, v13, :cond_1

    const/4 v5, 0x0

    move-object v0, v12

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move v4, v13

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    neg-float v14, v0

    add-float v6, p5, v14

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move-object/from16 v5, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    return v14

    :cond_1
    const/4 v10, 0x0

    move-object v0, v12

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move v4, v13

    move-object/from16 v5, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method private static drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V
    .locals 13

    move-object v6, p0

    iget v0, v6, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    add-float v0, p7, v0

    add-float v7, v0, p3

    invoke-virtual {v6}, Landroid/text/TextPaint;->getColor()I

    move-result v8

    invoke-virtual {v6}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {v6}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v10

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move v11, p2

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setColor(I)V

    add-float v4, v7, p4

    move-object v0, p1

    move/from16 v1, p5

    move v2, v7

    move/from16 v3, p6

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {v6, v10}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v11, p9

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    sub-int v12, p4, p3

    sub-int v13, p6, p5

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    int-to-float v8, v11

    move-object/from16 v1, p1

    move/from16 v3, p3

    move v4, v12

    move/from16 v5, p5

    move v6, v13

    move/from16 v7, p8

    move/from16 v9, p7

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v14, v1, p3

    add-int v15, v1, p4

    add-int v16, v1, p5

    add-int v17, v1, p6

    int-to-float v3, v11

    move-object/from16 v12, p1

    move-object v13, v2

    move/from16 v18, p8

    move/from16 v19, v3

    move/from16 v20, p7

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 11

    iget v6, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v7, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v8, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v9, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    return-void
.end method

.method private extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/text/TextPaint;->isStrikeThruText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->isUnderlineText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :cond_1
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v8, p5

    if-ltz p1, :cond_b

    const/4 v1, 0x0

    if-eqz p6, :cond_0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ne v8, v2, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v13, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget v2, v0, Landroid/text/TextLine;->mAddedWidth:F

    invoke-virtual {v13, v2}, Landroid/text/TextPaint;->setWordSpacing(F)V

    move/from16 v2, p2

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_2

    move/from16 v3, p3

    move/from16 v16, v2

    move/from16 v17, v3

    goto :goto_6

    :cond_2
    if-eqz p6, :cond_3

    add-int/lit8 v3, v8, 0x1

    goto :goto_1

    :cond_3
    move v3, v8

    :goto_1
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v4, p3

    :goto_2
    iget-object v5, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v6, v2

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v5, v6, v4, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    iget v6, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v5, v6

    if-lt v5, v3, :cond_a

    nop

    iget-object v6, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v7, v2

    iget v9, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v9, v5

    const-class v10, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v6, v7, v9, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

    iget-object v7, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v6, v7, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

    array-length v7, v6

    if-lez v7, :cond_7

    const/4 v7, 0x0

    move-object v9, v7

    move v7, v1

    :goto_3
    array-length v10, v6

    if-ge v7, v10, :cond_5

    aget-object v10, v6, v7

    instance-of v11, v10, Landroid/text/style/ReplacementSpan;

    if-eqz v11, :cond_4

    move-object v9, v10

    check-cast v9, Landroid/text/style/ReplacementSpan;

    goto :goto_4

    :cond_4
    invoke-virtual {v10, v13}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_7

    if-eqz p6, :cond_6

    move v1, v5

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    return v1

    :cond_7
    move/from16 v16, v2

    move/from16 v17, v5

    :goto_6
    move/from16 v5, p4

    if-eqz p6, :cond_8

    :goto_7
    move v7, v1

    goto :goto_8

    :cond_8
    const/4 v1, 0x2

    goto :goto_7

    :goto_8
    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_9

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v4, v17, v16

    move-object v1, v13

    move/from16 v3, v16

    move v6, v8

    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v1

    return v1

    :cond_9
    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v11, v1, v16

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v1, v17

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v14, v1, v8

    move-object v9, v13

    move-object v6, v13

    move v13, v5

    move v15, v7

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v1

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v1, v2

    return v1

    :cond_a
    move-object v6, v13

    move v2, v5

    goto/16 :goto_2

    :cond_b
    :goto_9
    if-eqz p6, :cond_c

    iget-object v1, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v8

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v1, v2

    return v1

    :cond_c
    iget-object v1, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v8

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private getRunAdvance(Landroid/text/TextPaint;IIIIZI)F
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    move-result v1

    return v1

    :cond_0
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    iget-object v2, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-nez v2, :cond_1

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v11, v1, p2

    add-int v12, v1, p3

    add-int v13, v1, p4

    add-int v14, v1, p5

    add-int v16, v1, p7

    move-object/from16 v9, p1

    move/from16 v15, p6

    invoke-virtual/range {v9 .. v16}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v5

    return v5

    :cond_1
    iget-object v5, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    add-int v6, p2, v1

    add-int v7, p3, v1

    invoke-virtual {v5, v6, v7}, Landroid/text/PrecomputedText;->getWidth(II)F

    move-result v5

    return v5
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v11, p11

    const/4 v7, 0x0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v1, p3

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v13, v1, p4

    if-nez p12, :cond_1

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v10, v7

    goto :goto_3

    :cond_1
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v11, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    move v8, v6

    if-eqz v8, :cond_3

    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    :cond_3
    move v9, v1

    move v10, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v12

    move v5, v13

    move-object v6, v11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v7, v1

    if-eqz v8, :cond_0

    move-object v1, v11

    move v2, v9

    move v3, v10

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    goto :goto_0

    :goto_3
    if-eqz p6, :cond_5

    if-eqz p5, :cond_4

    sub-float v1, p7, v10

    move v14, v1

    goto :goto_4

    :cond_4
    move/from16 v14, p7

    :goto_4
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move v4, v12

    move v5, v13

    move v6, v14

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move v0, v10

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    move v1, v14

    goto :goto_5

    :cond_5
    move v0, v10

    move/from16 v1, p7

    :goto_5
    if-eqz p5, :cond_6

    neg-float v10, v0

    goto :goto_6

    :cond_6
    move v10, v0

    :goto_6
    return v10
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 36

    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v13, p2

    move/from16 v12, p3

    move-object/from16 v11, p10

    if-lt v13, v14, :cond_19

    if-gt v13, v12, :cond_19

    if-ne v14, v13, :cond_1

    iget-object v0, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v1, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    if-eqz v11, :cond_0

    invoke-static {v11, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-object v0, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v0, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v1, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v14

    iget v3, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v1, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v14

    iget v3, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v0, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-nez v0, :cond_4

    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v0, v17

    goto :goto_1

    :cond_4
    :goto_0
    move/from16 v0, v16

    :goto_1
    move/from16 v18, v0

    if-nez v18, :cond_5

    iget-object v10, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v10}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v0

    invoke-direct {v15, v14, v12, v0}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    const/16 v16, 0x0

    move-object v0, v15

    move-object v1, v10

    move v2, v14

    move v3, v12

    move v4, v14

    move v5, v12

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v17, v10

    move/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p2

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    return v0

    :cond_5
    move/from16 v21, p6

    move/from16 v13, p6

    move/from16 v0, p1

    :goto_2
    move v15, v0

    move/from16 v14, p2

    if-ge v15, v14, :cond_18

    move-object/from16 v12, p0

    iget-object v11, v12, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v0, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v1, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, v15

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    move/from16 v10, p3

    add-int/2addr v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v12, Landroid/text/TextLine;->mStart:I

    sub-int v9, v0, v1

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v0, 0x0

    move-object/from16 v19, v0

    move/from16 v0, v17

    :goto_3
    iget-object v1, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_9

    iget-object v1, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v8

    if-ge v1, v2, :cond_8

    iget-object v1, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v0

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v15

    if-gt v1, v2, :cond_6

    goto :goto_4

    :cond_6
    iget-object v1, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    aget-object v1, v1, v0

    instance-of v2, v1, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_7

    move-object/from16 v19, v1

    check-cast v19, Landroid/text/style/ReplacementSpan;

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v11}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    if-eqz v19, :cond_c

    if-nez p11, :cond_b

    if-ge v8, v14, :cond_a

    goto :goto_5

    :cond_a
    move/from16 v20, v17

    goto :goto_6

    :cond_b
    :goto_5
    move/from16 v20, v16

    :goto_6
    move-object v0, v12

    move-object/from16 v1, v19

    move-object v2, v11

    move v3, v15

    move v4, v8

    move/from16 v5, p4

    move-object/from16 v6, p5

    move v7, v13

    move/from16 v22, v8

    move/from16 v8, p7

    move/from16 v23, v9

    move/from16 v9, p8

    move/from16 v10, p9

    move-object v14, v11

    move-object/from16 v11, p10

    move-object/from16 v25, v14

    move-object v14, v12

    move/from16 v12, v20

    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    add-float/2addr v13, v0

    nop

    move/from16 v24, v15

    goto/16 :goto_11

    :cond_c
    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v25, v11

    move-object v14, v12

    iget-object v12, v14, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move v0, v15

    move/from16 v1, v22

    iget-object v11, v14, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    iget-object v2, v14, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v10, v1

    move/from16 v20, v13

    move v13, v0

    :goto_7
    move v9, v0

    move/from16 v8, v22

    if-ge v9, v8, :cond_15

    iget-object v0, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v1, v14, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, v9

    iget v2, v14, Landroid/text/TextLine;->mStart:I

    add-int v2, v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v14, Landroid/text/TextLine;->mStart:I

    sub-int v7, v0, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v22

    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v1, v25

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move/from16 v0, v17

    :goto_8
    iget-object v2, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v2, :cond_f

    iget-object v2, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v0

    iget v3, v14, Landroid/text/TextLine;->mStart:I

    add-int v3, v3, v22

    if-ge v2, v3, :cond_e

    iget-object v2, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v0

    iget v3, v14, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v9

    if-gt v2, v3, :cond_d

    goto :goto_9

    :cond_d
    iget-object v2, v14, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_e
    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_f
    invoke-direct {v14, v1, v11}, Landroid/text/TextLine;->extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V

    if-ne v9, v15, :cond_10

    invoke-virtual {v12, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move-object/from16 v32, v11

    move/from16 v34, v13

    move/from16 v24, v15

    move-object v15, v1

    move-object/from16 v35, v14

    move-object v14, v12

    move-object/from16 v12, v35

    goto/16 :goto_c

    :cond_10
    invoke-virtual {v1, v12}, Landroid/text/TextPaint;->hasEqualAttributes(Landroid/text/TextPaint;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, v14, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v0

    invoke-direct {v14, v13, v10, v0}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    if-nez p11, :cond_12

    move-object v5, v1

    move/from16 v6, p2

    if-ge v10, v6, :cond_11

    goto :goto_a

    :cond_11
    move/from16 v24, v17

    goto :goto_b

    :cond_12
    move-object v5, v1

    move/from16 v6, p2

    :goto_a
    move/from16 v24, v16

    :goto_b
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v25

    iget-object v4, v14, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object v0, v14

    move-object v1, v12

    move v2, v13

    move v3, v10

    move-object/from16 v26, v4

    move v4, v15

    move-object/from16 v27, v5

    move/from16 v5, v23

    move/from16 v6, p4

    move/from16 v28, v7

    move-object/from16 v7, p5

    move/from16 v29, v8

    move/from16 v8, v20

    move/from16 v30, v9

    move/from16 v9, p7

    move/from16 v31, v10

    move/from16 v10, p8

    move-object/from16 v32, v11

    move/from16 v11, p9

    move-object/from16 v33, v12

    move-object/from16 v12, p10

    move/from16 v34, v13

    move/from16 v13, v24

    move/from16 v14, v25

    move/from16 v24, v15

    move-object/from16 v15, v26

    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    add-float v20, v20, v0

    move/from16 v13, v30

    move-object/from16 v15, v27

    move-object/from16 v14, v33

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v12, p0

    iget-object v0, v12, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_d

    :cond_13
    move/from16 v28, v7

    move/from16 v29, v8

    move/from16 v30, v9

    move/from16 v31, v10

    move-object/from16 v32, v11

    move/from16 v34, v13

    move/from16 v24, v15

    move-object v15, v1

    move-object/from16 v35, v14

    move-object v14, v12

    move-object/from16 v12, v35

    :goto_c
    move/from16 v13, v34

    :goto_d
    move/from16 v10, v28

    move-object/from16 v11, v32

    invoke-virtual {v11}, Landroid/text/TextLine$DecorationInfo;->hasDecoration()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v11}, Landroid/text/TextLine$DecorationInfo;->copyInfo()Landroid/text/TextLine$DecorationInfo;

    move-result-object v0

    move/from16 v1, v30

    iput v1, v0, Landroid/text/TextLine$DecorationInfo;->start:I

    move/from16 v2, v28

    iput v2, v0, Landroid/text/TextLine$DecorationInfo;->end:I

    iget-object v3, v12, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_14
    move/from16 v2, v28

    move/from16 v1, v30

    :goto_e
    move v0, v2

    move-object/from16 v25, v15

    move/from16 v15, v24

    move/from16 v22, v29

    move-object/from16 v35, v14

    move-object v14, v12

    move-object/from16 v12, v35

    goto/16 :goto_7

    :cond_15
    move/from16 v29, v8

    move/from16 v31, v10

    move/from16 v34, v13

    move/from16 v24, v15

    move-object/from16 v15, v25

    move-object/from16 v35, v14

    move-object v14, v12

    move-object/from16 v12, v35

    iget-object v0, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v0

    invoke-direct {v12, v13, v10, v0}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    if-nez p11, :cond_17

    move/from16 v9, p2

    if-ge v10, v9, :cond_16

    goto :goto_f

    :cond_16
    move/from16 v22, v17

    goto :goto_10

    :cond_17
    move/from16 v9, p2

    :goto_f
    move/from16 v22, v16

    :goto_10
    move/from16 v8, v29

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v25

    iget-object v7, v12, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object v0, v12

    move-object v1, v14

    move v2, v13

    move v3, v10

    move/from16 v4, v24

    move/from16 v5, v23

    move/from16 v6, p4

    move-object/from16 v26, v7

    move-object/from16 v7, p5

    move/from16 v27, v8

    move/from16 v8, v20

    move/from16 v9, p7

    move/from16 v28, v10

    move/from16 v10, p8

    move-object/from16 v29, v11

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v30, v13

    move/from16 v13, v22

    move-object/from16 v22, v14

    move/from16 v14, v25

    move-object/from16 v25, v15

    move-object/from16 v15, v26

    invoke-direct/range {v0 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v0

    add-float v20, v20, v0

    move/from16 v13, v20

    :goto_11
    move/from16 v0, v23

    goto/16 :goto_2

    :cond_18
    sub-float v0, v13, v21

    return v0

    :cond_19
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "measureLimit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") is out of start ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") and limit ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") bounds"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "IIIIZ",
            "Landroid/graphics/Canvas;",
            "FIII",
            "Landroid/graphics/Paint$FontMetricsInt;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;)F"
        }
    .end annotation

    move-object/from16 v15, p1

    move/from16 v14, p2

    move/from16 v13, p10

    move-object/from16 v12, p12

    move-object/from16 v11, p15

    move-object/from16 v10, p0

    iget v0, v10, Landroid/text/TextLine;->mAddedWidth:F

    invoke-virtual {v15, v0}, Landroid/text/TextPaint;->setWordSpacing(F)V

    if-eqz v12, :cond_0

    invoke-static {v12, v15}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_0
    move/from16 v9, p3

    if-ne v9, v14, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v8, 0x0

    const/16 v16, 0x0

    if-nez v11, :cond_2

    move/from16 v0, v16

    goto :goto_0

    :cond_2
    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    move v7, v0

    if-nez p13, :cond_4

    if-eqz p7, :cond_3

    iget v0, v15, Landroid/text/TextPaint;->bgColor:I

    if-nez v0, :cond_4

    if-nez v7, :cond_4

    if-eqz p6, :cond_3

    goto :goto_1

    :cond_3
    move v12, v7

    goto :goto_2

    :cond_4
    :goto_1
    move-object v0, v10

    move-object v1, v15

    move v2, v14

    move v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v12, v7

    move/from16 v7, p14

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v8

    :goto_2
    if-eqz p7, :cond_c

    if-eqz p6, :cond_5

    sub-float v0, p8, v8

    move/from16 v1, p8

    :goto_3
    move/from16 v18, v0

    goto :goto_4

    :cond_5
    move/from16 v0, p8

    add-float v1, p8, v8

    goto :goto_3

    :goto_4
    move/from16 v19, v1

    iget v0, v15, Landroid/text/TextPaint;->bgColor:I

    if-eqz v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    iget v0, v15, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v15, v0}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v15, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v5, p9

    int-to-float v2, v5

    move/from16 v4, p11

    int-to-float v3, v4

    move-object/from16 v0, p7

    move/from16 v1, v18

    move/from16 v20, v3

    move/from16 v3, v19

    move/from16 v4, v20

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v15, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v15, v6}, Landroid/text/TextPaint;->setColor(I)V

    :cond_6
    if-eqz v12, :cond_b

    nop

    :goto_5
    move/from16 v7, v16

    if-ge v7, v12, :cond_b

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/text/TextLine$DecorationInfo;

    iget v0, v6, Landroid/text/TextLine$DecorationInfo;->start:I

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v16

    iget v0, v6, Landroid/text/TextLine$DecorationInfo;->end:I

    move/from16 v5, p14

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object v0, v10

    move-object v1, v15

    move v2, v14

    move v3, v9

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v21, v12

    move-object v12, v6

    move/from16 v6, p6

    move/from16 v22, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v23

    move/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v24

    if-eqz p6, :cond_7

    sub-float v0, v19, v24

    sub-float v1, v19, v23

    :goto_6
    move/from16 v25, v0

    move v6, v1

    goto :goto_7

    :cond_7
    add-float v0, v18, v23

    add-float v1, v18, v24

    goto :goto_6

    :goto_7
    iget v0, v12, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v0, :cond_8

    iget v2, v12, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    iget v4, v12, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    int-to-float v7, v13

    move-object v0, v15

    move-object/from16 v1, p7

    move/from16 v5, v25

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_8
    iget-boolean v0, v12, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlineThickness()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    int-to-float v4, v13

    move-object v7, v15

    move v5, v8

    move-object/from16 v8, p7

    move v9, v2

    move v10, v3

    move v11, v0

    move-object v2, v12

    move/from16 v17, v21

    move/from16 v12, v25

    move v3, v13

    move v13, v6

    move v14, v4

    invoke-static/range {v7 .. v14}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    goto :goto_8

    :cond_9
    move v5, v8

    move-object v2, v12

    move v3, v13

    move/from16 v17, v21

    :goto_8
    iget-boolean v0, v2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v0, :cond_a

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruThickness()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruPosition()F

    move-result v10

    int-to-float v14, v3

    move-object v7, v15

    move-object/from16 v8, p7

    move v11, v0

    move/from16 v12, v25

    move v13, v6

    invoke-static/range {v7 .. v14}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_a
    add-int/lit8 v16, v22, 0x1

    move-object/from16 v10, p0

    move/from16 v14, p2

    move/from16 v9, p3

    move-object/from16 v11, p15

    move v13, v3

    move v8, v5

    move/from16 v12, v17

    goto/16 :goto_5

    :cond_b
    move v5, v8

    move/from16 v17, v12

    move v3, v13

    iget v0, v15, Landroid/text/TextPaint;->baselineShift:I

    add-int v9, v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object v2, v15

    move/from16 v3, p2

    move/from16 v4, p3

    move v10, v5

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, v18

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    goto :goto_9

    :cond_c
    move v10, v8

    move/from16 v17, v12

    :goto_9
    if-eqz p6, :cond_d

    neg-float v8, v10

    goto :goto_a

    :cond_d
    move v8, v10

    :goto_a
    return v8
.end method

.method public static isLineEndSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_0

    const/16 v0, 0x200a

    if-gt p0, v0, :cond_0

    const/16 v0, 0x2007

    if-ne p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x205f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_1

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

.method private isStretchableWhitespace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method public static obtain()Landroid/text/TextLine;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    sget-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/text/TextLine;

    invoke-direct {v0}, Landroid/text/TextLine;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object v0, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    iput-object v0, p0, Landroid/text/TextLine;->mChars:[C

    iput-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 22

    move-object/from16 v10, p0

    iget-boolean v0, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v0, :cond_1

    iget-object v0, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_0

    const/4 v2, 0x0

    iget v3, v10, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    return-void

    :cond_0
    iget-object v0, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    iget v3, v10, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x1

    const/4 v9, 0x0

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, v10, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v11, v1, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v1, v11

    add-int/lit8 v12, v1, -0x2

    move v1, v0

    const/4 v0, 0x0

    :goto_0
    move v14, v0

    array-length v0, v11

    if-ge v14, v0, :cond_c

    aget v15, v11, v14

    add-int/lit8 v0, v14, 0x1

    aget v0, v11, v0

    const v2, 0x3ffffff

    and-int/2addr v0, v2

    add-int/2addr v0, v15

    iget v2, v10, Landroid/text/TextLine;->mLen:I

    if-le v0, v2, :cond_2

    iget v0, v10, Landroid/text/TextLine;->mLen:I

    :cond_2
    move v9, v0

    add-int/lit8 v0, v14, 0x1

    aget v0, v11, v0

    const/high16 v2, 0x4000000

    and-int/2addr v0, v2

    const/16 v16, 0x1

    if-eqz v0, :cond_3

    move/from16 v4, v16

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    move v0, v15

    iget-boolean v2, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_4

    move v2, v15

    goto :goto_2

    :cond_4
    move v2, v9

    :goto_2
    move/from16 v17, v0

    move/from16 v18, v1

    :goto_3
    move v8, v2

    if-gt v8, v9, :cond_b

    const/4 v0, 0x0

    iget-boolean v1, v10, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_5

    if-ge v8, v9, :cond_5

    iget-object v1, v10, Landroid/text/TextLine;->mChars:[C

    aget-char v0, v1, v8

    const v1, 0xd800

    if-lt v0, v1, :cond_5

    const v1, 0xdc00

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v8, 0x1

    if-ge v1, v9, :cond_5

    iget-object v1, v10, Landroid/text/TextLine;->mChars:[C

    invoke-static {v1, v8}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    move v7, v0

    const/16 v6, 0x9

    if-eq v8, v9, :cond_7

    if-ne v7, v6, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    move/from16 v21, v9

    goto :goto_8

    :cond_7
    :goto_5
    add-float v5, p2, v18

    if-ne v14, v12, :cond_9

    iget v0, v10, Landroid/text/TextLine;->mLen:I

    if-eq v8, v0, :cond_8

    goto :goto_6

    :cond_8
    const/16 v19, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    move/from16 v19, v16

    :goto_7
    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v8

    move v13, v6

    move/from16 v6, p3

    move v13, v7

    move/from16 v7, p4

    move/from16 v20, v8

    move/from16 v8, p5

    move/from16 v21, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v0

    add-float v18, v18, v0

    const/16 v0, 0x9

    if-ne v13, v0, :cond_a

    iget v0, v10, Landroid/text/TextLine;->mDir:I

    int-to-float v0, v0

    iget v1, v10, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v18

    invoke-virtual {v10, v1}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float/2addr v0, v1

    move/from16 v18, v0

    :cond_a
    add-int/lit8 v17, v20, 0x1

    move/from16 v8, v20

    :goto_8
    add-int/lit8 v2, v8, 0x1

    move/from16 v9, v21

    goto :goto_3

    :cond_b
    add-int/lit8 v0, v14, 0x2

    move/from16 v1, v18

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 27

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iget v11, v7, Landroid/text/TextLine;->mLen:I

    iget v0, v7, Landroid/text/TextLine;->mDir:I

    const/4 v12, -0x1

    if-ne v0, v12, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    iget-object v0, v7, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v0, 0x0

    move v1, v10

    move v2, v11

    const/16 v16, -0x1

    const/4 v3, 0x0

    const v17, 0x3ffffff

    if-ne v8, v10, :cond_1

    const/4 v4, -0x2

    :goto_1
    move v14, v0

    move/from16 v18, v1

    move/from16 v21, v3

    move v12, v4

    move-object v8, v6

    move/from16 v13, v16

    move/from16 v16, v2

    goto/16 :goto_d

    :cond_1
    if-ne v8, v11, :cond_2

    array-length v4, v6

    goto :goto_1

    :cond_2
    move v4, v2

    move v2, v1

    const/4 v1, 0x0

    :goto_2
    array-length v5, v6

    if-ge v1, v5, :cond_b

    aget v5, v6, v1

    add-int v2, v10, v5

    if-lt v8, v2, :cond_a

    add-int/lit8 v5, v1, 0x1

    aget v5, v6, v5

    and-int v5, v5, v17

    add-int/2addr v5, v2

    if-le v5, v11, :cond_3

    move v5, v11

    :cond_3
    if-ge v8, v5, :cond_9

    add-int/lit8 v4, v1, 0x1

    aget v4, v6, v4

    ushr-int/lit8 v4, v4, 0x1a

    and-int/lit8 v0, v4, 0x3f

    if-ne v8, v2, :cond_8

    add-int/lit8 v4, v8, -0x1

    const/16 v18, 0x0

    :goto_3
    move/from16 v19, v18

    array-length v13, v6

    move/from16 v14, v19

    if-ge v14, v13, :cond_7

    aget v13, v6, v14

    add-int/2addr v13, v10

    if-lt v4, v13, :cond_5

    add-int/lit8 v19, v14, 0x1

    aget v18, v6, v19

    and-int v18, v18, v17

    add-int v12, v13, v18

    if-le v12, v11, :cond_4

    move v12, v11

    :cond_4
    if-ge v4, v12, :cond_5

    add-int/lit8 v19, v14, 0x1

    aget v18, v6, v19

    ushr-int/lit8 v18, v18, 0x1a

    move/from16 v20, v2

    and-int/lit8 v2, v18, 0x3f

    if-ge v2, v0, :cond_6

    move v1, v14

    move v0, v2

    move/from16 v18, v13

    move v5, v12

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    move/from16 v20, v2

    :cond_6
    add-int/lit8 v18, v14, 0x2

    move/from16 v2, v20

    const/4 v12, -0x1

    goto :goto_3

    :cond_7
    move/from16 v20, v2

    move/from16 v18, v20

    :goto_4
    move v13, v0

    move v12, v1

    move v14, v5

    move v5, v3

    goto :goto_6

    :cond_8
    move/from16 v20, v2

    move v13, v0

    move v12, v1

    move v14, v5

    move/from16 v18, v20

    move v5, v3

    goto :goto_6

    :cond_9
    move/from16 v20, v2

    move v4, v5

    goto :goto_5

    :cond_a
    move/from16 v20, v2

    :goto_5
    add-int/lit8 v1, v1, 0x2

    move/from16 v2, v20

    const/4 v12, -0x1

    goto :goto_2

    :cond_b
    move v13, v0

    move v12, v1

    move/from16 v18, v2

    move v5, v3

    move v14, v4

    :goto_6
    array-length v0, v6

    if-eq v12, v0, :cond_13

    and-int/lit8 v0, v13, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    :goto_7
    move v4, v0

    if-ne v9, v4, :cond_d

    const/4 v0, 0x1

    goto :goto_8

    :cond_d
    const/4 v0, 0x0

    :goto_8
    move v3, v0

    if-eqz v3, :cond_e

    move v0, v14

    goto :goto_9

    :cond_e
    move/from16 v0, v18

    :goto_9
    if-ne v8, v0, :cond_10

    if-eq v3, v5, :cond_f

    goto :goto_a

    :cond_f
    move/from16 v21, v5

    move-object v8, v6

    goto :goto_c

    :cond_10
    :goto_a
    move-object v0, v7

    move v1, v12

    move/from16 v2, v18

    move/from16 v19, v3

    move v3, v14

    move/from16 v20, v4

    move/from16 v21, v5

    move v5, v8

    move-object v8, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v0

    if-eqz v19, :cond_11

    move v1, v14

    goto :goto_b

    :cond_11
    move/from16 v1, v18

    :goto_b
    if-eq v0, v1, :cond_12

    return v0

    :cond_12
    move/from16 v16, v14

    move v14, v13

    move v13, v0

    goto :goto_d

    :cond_13
    move/from16 v21, v5

    move-object v8, v6

    :goto_c
    move/from16 v26, v14

    move v14, v13

    move/from16 v13, v16

    move/from16 v16, v26

    :goto_d
    if-ne v9, v15, :cond_14

    const/4 v0, 0x1

    goto :goto_e

    :cond_14
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_15

    const/4 v1, 0x2

    goto :goto_f

    :cond_15
    const/4 v1, -0x2

    :goto_f
    add-int v6, v12, v1

    if-ltz v6, :cond_1d

    array-length v1, v8

    if-ge v6, v1, :cond_1d

    aget v1, v8, v6

    add-int v19, v10, v1

    add-int/lit8 v1, v6, 0x1

    aget v1, v8, v1

    and-int v1, v1, v17

    add-int v1, v19, v1

    if-le v1, v11, :cond_16

    move v1, v11

    :cond_16
    move/from16 v20, v1

    add-int/lit8 v1, v6, 0x1

    aget v1, v8, v1

    ushr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v5, v1, 0x3f

    and-int/lit8 v1, v5, 0x1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_10

    :cond_17
    const/4 v1, 0x0

    :goto_10
    move v4, v1

    if-ne v9, v4, :cond_18

    const/4 v1, 0x1

    goto :goto_11

    :cond_18
    const/4 v1, 0x0

    :goto_11
    move/from16 v22, v1

    const/4 v0, -0x1

    if-ne v13, v0, :cond_1b

    nop

    if-eqz v22, :cond_19

    move/from16 v23, v19

    goto :goto_12

    :cond_19
    move/from16 v23, v20

    :goto_12
    move-object v0, v7

    move v1, v6

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v5, v23

    move/from16 v23, v6

    move/from16 v6, v22

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v13

    if-eqz v22, :cond_1a

    move/from16 v0, v20

    goto :goto_13

    :cond_1a
    move/from16 v0, v19

    :goto_13
    if-ne v13, v0, :cond_21

    move/from16 v12, v23

    move/from16 v14, v25

    goto :goto_d

    :cond_1b
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v23, v6

    move/from16 v0, v25

    if-ge v0, v14, :cond_21

    if-eqz v22, :cond_1c

    move/from16 v1, v19

    goto :goto_14

    :cond_1c
    move/from16 v1, v20

    :goto_14
    move v13, v1

    goto :goto_16

    :cond_1d
    move/from16 v23, v6

    const/4 v1, -0x1

    if-ne v13, v1, :cond_1f

    if-eqz v0, :cond_1e

    iget v1, v7, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    nop

    :cond_1e
    move v13, v1

    goto :goto_16

    :cond_1f
    if-gt v13, v11, :cond_21

    if-eqz v0, :cond_20

    move v1, v11

    goto :goto_15

    :cond_20
    move v1, v10

    :goto_15
    move v13, v1

    :cond_21
    :goto_16
    return v13
.end method

.method public justify(F)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v3, p1, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    iput v3, p0, Landroid/text/TextLine;->mAddedWidth:F

    return-void
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 24

    move-object/from16 v6, p0

    move/from16 v7, p1

    if-eqz p2, :cond_0

    add-int/lit8 v0, v7, -0x1

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    move v8, v0

    if-gez v8, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v9, 0x0

    iget-boolean v0, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v0, :cond_3

    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    move-object v0, v6

    move v2, v7

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0

    :cond_2
    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_3

    const/4 v1, 0x0

    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x1

    move-object v0, v6

    move v2, v7

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0

    :cond_3
    iget-object v10, v6, Landroid/text/TextLine;->mChars:[C

    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v11, v0, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v0, 0x0

    :goto_1
    move v13, v0

    array-length v0, v11

    if-ge v13, v0, :cond_14

    aget v14, v11, v13

    add-int/lit8 v0, v13, 0x1

    aget v0, v11, v0

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    add-int/2addr v0, v14

    iget v1, v6, Landroid/text/TextLine;->mLen:I

    if-le v0, v1, :cond_4

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    :cond_4
    move v5, v0

    add-int/lit8 v0, v13, 0x1

    aget v0, v11, v0

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    const/4 v15, 0x1

    if-eqz v0, :cond_5

    move v0, v15

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    move v4, v0

    move v0, v14

    iget-boolean v1, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_6

    move v1, v14

    goto :goto_3

    :cond_6
    move v1, v5

    :goto_3
    move/from16 v16, v9

    move v9, v0

    :goto_4
    move v3, v1

    if-gt v3, v5, :cond_13

    const/4 v0, 0x0

    iget-boolean v1, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_7

    if-ge v3, v5, :cond_7

    aget-char v0, v10, v3

    const v1, 0xd800

    if-lt v0, v1, :cond_7

    const v1, 0xdc00

    if-ge v0, v1, :cond_7

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v5, :cond_7

    invoke-static {v10, v3}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    move v2, v0

    const/16 v1, 0x9

    if-eq v3, v5, :cond_9

    if-ne v2, v1, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    move/from16 v21, v4

    move/from16 v22, v5

    goto/16 :goto_c

    :cond_9
    :goto_6
    if-lt v8, v9, :cond_a

    if-ge v8, v3, :cond_a

    move v0, v15

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    move/from16 v17, v0

    iget v0, v6, Landroid/text/TextLine;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    move v0, v15

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    :goto_8
    if-ne v0, v4, :cond_c

    move v0, v15

    goto :goto_9

    :cond_c
    const/4 v0, 0x0

    :goto_9
    move/from16 v19, v0

    if-eqz v17, :cond_d

    if-eqz v19, :cond_d

    move-object v0, v6

    move v1, v9

    move v12, v2

    move v2, v7

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float v0, v16, v0

    return v0

    :cond_d
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move v5, v2

    move-object v0, v6

    const/16 v4, 0x9

    move v1, v9

    move/from16 v2, v20

    move/from16 v3, v20

    move v12, v4

    move/from16 v4, v21

    move v12, v5

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v5

    if-eqz v19, :cond_e

    move v0, v5

    goto :goto_a

    :cond_e
    neg-float v0, v5

    :goto_a
    add-float v16, v16, v0

    if-eqz v17, :cond_f

    const/4 v15, 0x0

    move-object v0, v6

    move v1, v9

    move v2, v7

    move/from16 v3, v20

    move/from16 v4, v21

    move/from16 v18, v5

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float v0, v16, v0

    return v0

    :cond_f
    move/from16 v18, v5

    const/16 v0, 0x9

    if-ne v12, v0, :cond_12

    move/from16 v0, v20

    if-ne v7, v0, :cond_10

    return v16

    :cond_10
    iget v1, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    iget v2, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    invoke-virtual {v6, v2}, Landroid/text/TextLine;->nextTab(F)F

    move-result v2

    mul-float/2addr v1, v2

    if-ne v8, v0, :cond_11

    return v1

    :cond_11
    move/from16 v16, v1

    goto :goto_b

    :cond_12
    move/from16 v0, v20

    :goto_b
    add-int/lit8 v9, v0, 0x1

    move v3, v0

    :goto_c
    add-int/lit8 v1, v3, 0x1

    move/from16 v4, v21

    move/from16 v5, v22

    goto/16 :goto_4

    :cond_13
    add-int/lit8 v0, v13, 0x2

    move/from16 v9, v16

    goto/16 :goto_1

    :cond_14
    return v9
.end method

.method measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F
    .locals 25

    move-object/from16 v6, p0

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    const/4 v7, 0x1

    add-int/2addr v0, v7

    new-array v8, v0, [F

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    add-int/2addr v0, v7

    new-array v9, v0, [I

    const/4 v10, 0x0

    move v0, v10

    :goto_0
    array-length v1, v9

    if-ge v0, v1, :cond_1

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_1
    aput v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v0, v9, v10

    if-gez v0, :cond_2

    const/4 v0, 0x0

    aput v0, v8, v10

    :cond_2
    const/4 v11, 0x0

    iget-boolean v0, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v0, :cond_6

    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_4

    nop

    :goto_2
    move v7, v10

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v7, v0, :cond_3

    const/4 v1, 0x0

    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x0

    move-object v0, v6

    move v2, v7

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    aput v0, v8, v7

    add-int/lit8 v10, v7, 0x1

    goto :goto_2

    :cond_3
    return-object v8

    :cond_4
    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v1, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v1, :cond_6

    nop

    :goto_3
    move v7, v10

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v7, v0, :cond_5

    const/4 v1, 0x0

    iget v3, v6, Landroid/text/TextLine;->mLen:I

    const/4 v4, 0x1

    move-object v0, v6

    move v2, v7

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    aput v0, v8, v7

    add-int/lit8 v10, v7, 0x1

    goto :goto_3

    :cond_5
    return-object v8

    :cond_6
    iget-object v12, v6, Landroid/text/TextLine;->mChars:[C

    iget-object v0, v6, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v13, v0, Landroid/text/Layout$Directions;->mDirections:[I

    move v0, v10

    :goto_4
    move v14, v0

    array-length v0, v13

    if-ge v14, v0, :cond_18

    aget v15, v13, v14

    add-int/lit8 v0, v14, 0x1

    aget v0, v13, v0

    const v1, 0x3ffffff

    and-int/2addr v0, v1

    add-int/2addr v0, v15

    iget v1, v6, Landroid/text/TextLine;->mLen:I

    if-le v0, v1, :cond_7

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    :cond_7
    move v5, v0

    add-int/lit8 v0, v14, 0x1

    aget v0, v13, v0

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    move v0, v7

    goto :goto_5

    :cond_8
    move v0, v10

    :goto_5
    move v4, v0

    move v0, v15

    iget-boolean v1, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_9

    move v1, v15

    goto :goto_6

    :cond_9
    move v1, v5

    :goto_6
    move/from16 v16, v11

    move v11, v0

    :goto_7
    move v3, v1

    if-gt v3, v5, :cond_17

    const/4 v0, 0x0

    iget-boolean v1, v6, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_a

    if-ge v3, v5, :cond_a

    aget-char v0, v12, v3

    const v1, 0xd800

    if-lt v0, v1, :cond_a

    const v1, 0xdc00

    if-ge v0, v1, :cond_a

    add-int/lit8 v1, v3, 0x1

    if-ge v1, v5, :cond_a

    invoke-static {v12, v3}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_a

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_a
    move v2, v0

    const/16 v1, 0x9

    if-eq v3, v5, :cond_c

    if-ne v2, v1, :cond_b

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v18, v4

    move/from16 v21, v5

    goto/16 :goto_12

    :cond_c
    :goto_9
    move/from16 v17, v16

    iget v0, v6, Landroid/text/TextLine;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    move v0, v7

    goto :goto_a

    :cond_d
    move v0, v10

    :goto_a
    if-ne v0, v4, :cond_e

    move v0, v7

    goto :goto_b

    :cond_e
    move v0, v10

    :goto_b
    move/from16 v19, v0

    move-object v0, v6

    const/16 v10, 0x9

    move v1, v11

    move v7, v2

    move v2, v3

    move/from16 v20, v3

    move/from16 v18, v4

    move/from16 v21, v5

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v4

    if-eqz v19, :cond_f

    move v0, v4

    goto :goto_c

    :cond_f
    neg-float v0, v4

    :goto_c
    add-float v16, v16, v0

    if-eqz v19, :cond_10

    move/from16 v0, v17

    goto :goto_d

    :cond_10
    move/from16 v0, v16

    :goto_d
    move/from16 v22, v0

    if-eqz v19, :cond_11

    move-object/from16 v5, p2

    goto :goto_e

    :cond_11
    const/4 v0, 0x0

    move-object v5, v0

    :goto_e
    move v0, v11

    :goto_f
    move v3, v0

    move/from16 v2, v20

    if-gt v3, v2, :cond_13

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    if-gt v3, v0, :cond_13

    aget v0, v9, v3

    if-lt v0, v11, :cond_12

    aget v0, v9, v3

    if-ge v0, v2, :cond_12

    nop

    move-object v0, v6

    move v1, v11

    move/from16 v23, v2

    move v2, v3

    move/from16 v20, v3

    move/from16 v3, v23

    move/from16 v24, v4

    move/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float v0, v22, v0

    aput v0, v8, v20

    goto :goto_10

    :cond_12
    move/from16 v23, v2

    move/from16 v20, v3

    move/from16 v24, v4

    :goto_10
    add-int/lit8 v0, v20, 0x1

    move/from16 v20, v23

    move/from16 v4, v24

    goto :goto_f

    :cond_13
    move/from16 v23, v2

    move/from16 v24, v4

    if-ne v7, v10, :cond_16

    move/from16 v0, v23

    aget v1, v9, v0

    if-ne v1, v0, :cond_14

    aput v16, v8, v0

    :cond_14
    iget v1, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    iget v2, v6, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    mul-float v2, v2, v16

    invoke-virtual {v6, v2}, Landroid/text/TextLine;->nextTab(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v2, v9, v3

    if-ne v2, v0, :cond_15

    add-int/lit8 v3, v0, 0x1

    aput v1, v8, v3

    :cond_15
    move/from16 v16, v1

    goto :goto_11

    :cond_16
    move/from16 v0, v23

    :goto_11
    add-int/lit8 v11, v0, 0x1

    move v3, v0

    :goto_12
    const/4 v0, 0x1

    add-int/lit8 v1, v3, 0x1

    move v7, v0

    move/from16 v4, v18

    move/from16 v5, v21

    const/4 v10, 0x0

    goto/16 :goto_7

    :cond_17
    move v0, v7

    add-int/lit8 v1, v14, 0x2

    move v0, v1

    move/from16 v11, v16

    const/4 v10, 0x0

    goto/16 :goto_4

    :cond_18
    iget v0, v6, Landroid/text/TextLine;->mLen:I

    aget v0, v9, v0

    iget v1, v6, Landroid/text/TextLine;->mLen:I

    if-ne v0, v1, :cond_19

    iget v0, v6, Landroid/text/TextLine;->mLen:I

    aput v11, v8, v0

    :cond_19
    return-object v8
.end method

.method public metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .locals 1

    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    return v0
.end method

.method public set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v6, p7

    iput-object v1, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput v3, v0, Landroid/text/TextLine;->mStart:I

    sub-int v7, v4, v3

    iput v7, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v7, p5

    iput v7, v0, Landroid/text/TextLine;->mDir:I

    iput-object v5, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v8, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-eqz v8, :cond_9

    iput-boolean v6, v0, Landroid/text/TextLine;->mHasTabs:Z

    const/4 v8, 0x0

    iput-object v8, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/text/Spanned;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v10, :cond_1

    move-object v10, v2

    check-cast v10, Landroid/text/Spanned;

    iput-object v10, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget-object v10, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v13, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v10, v13, v3, v4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v10, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v10, v10, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v10, :cond_0

    move v10, v12

    goto :goto_0

    :cond_0
    move v10, v11

    :goto_0
    move v9, v10

    :cond_1
    iput-object v8, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    instance-of v10, v2, Landroid/text/PrecomputedText;

    if-eqz v10, :cond_2

    move-object v10, v2

    check-cast v10, Landroid/text/PrecomputedText;

    iput-object v10, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    iget-object v10, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    invoke-virtual {v10}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v10

    invoke-virtual {v10}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/text/TextPaint;->equalsForTextMeasurement(Landroid/graphics/Paint;)Z

    move-result v10

    if-nez v10, :cond_2

    iput-object v8, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    :cond_2
    if-nez v9, :cond_4

    if-nez v6, :cond_4

    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v5, v8, :cond_3

    goto :goto_1

    :cond_3
    move v8, v11

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v12

    :goto_2
    iput-boolean v8, v0, Landroid/text/TextLine;->mCharsValid:Z

    iget-boolean v8, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v8, :cond_8

    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    if-eqz v8, :cond_5

    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    array-length v8, v8

    iget v10, v0, Landroid/text/TextLine;->mLen:I

    if-ge v8, v10, :cond_6

    :cond_5
    iget v8, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v8

    iput-object v8, v0, Landroid/text/TextLine;->mChars:[C

    :cond_6
    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v3, v4, v8, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz v9, :cond_8

    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    move v10, v3

    :goto_3
    if-ge v10, v4, :cond_8

    iget-object v11, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v11, v10, v4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v11

    iget-object v13, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v13, v10, v11}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v13

    if-eqz v13, :cond_7

    sub-int v13, v10, v3

    const v14, 0xfffc

    aput-char v14, v8, v13

    sub-int v13, v10, v3

    add-int/2addr v13, v12

    sub-int v14, v11, v3

    :goto_4
    if-ge v13, v14, :cond_7

    const v15, 0xfeff

    aput-char v15, v8, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_7
    move v10, v11

    goto :goto_3

    :cond_8
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    const/4 v10, 0x0

    iput v10, v0, Landroid/text/TextLine;->mAddedWidth:F

    return-void

    :cond_9
    move-object/from16 v8, p8

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Directions cannot be null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
