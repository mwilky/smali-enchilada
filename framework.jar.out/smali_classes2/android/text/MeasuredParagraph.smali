.class public Landroid/text/MeasuredParagraph;
.super Ljava/lang/Object;
.source "MeasuredParagraph.java"


# static fields
.field private static final OBJECT_REPLACEMENT_CHARACTER:C = '\ufffc'

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/MeasuredParagraph;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

.field private mCachedPaint:Landroid/text/TextPaint;

.field private mCopiedBuffer:[C

.field private mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

.field private mLevels:Landroid/text/AutoGrowArray$ByteArray;

.field private mLtrWithoutBidi:Z

.field private mNativeObjectCleaner:Ljava/lang/Runnable;

.field private mNativePtr:J

.field private mParaDir:I

.field private mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

.field private mSpanned:Landroid/text/Spanned;

.field private mTextLength:I

.field private mTextStart:I

.field private mWholeWidth:F

.field private mWidths:Landroid/text/AutoGrowArray$FloatArray;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/text/MeasuredParagraph;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Landroid/text/MeasuredParagraph;->nGetReleaseFunc()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/text/MeasuredParagraph;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/AutoGrowArray$ByteArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    return-void
.end method

.method private applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p5

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    iput v1, v0, Landroid/text/TextPaint;->baselineShift:I

    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v11, v0

    if-eqz v11, :cond_1

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    :cond_1
    const/4 v0, 0x0

    if-eqz v7, :cond_3

    nop

    :goto_1
    array-length v4, v7

    if-ge v1, v4, :cond_3

    aget-object v4, v7, v1

    instance-of v5, v4, Landroid/text/style/ReplacementSpan;

    if-eqz v5, :cond_2

    move-object v0, v4

    check-cast v0, Landroid/text/style/ReplacementSpan;

    goto :goto_2

    :cond_2
    iget-object v5, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v12, v0

    iget v0, v6, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v13, p3, v0

    iget v0, v6, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v4, p4, v0

    cmp-long v0, v8, v2

    if-eqz v0, :cond_4

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :cond_4
    if-eqz v12, :cond_5

    move-object v0, v6

    move-object v1, v12

    move v2, v13

    move v3, v4

    move v7, v4

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Landroid/text/MeasuredParagraph;->applyReplacementRun(Landroid/text/style/ReplacementSpan;IIJ)V

    goto :goto_3

    :cond_5
    move v7, v4

    invoke-direct {v6, v13, v7, v8, v9}, Landroid/text/MeasuredParagraph;->applyStyleRun(IIJ)V

    :goto_3
    if-eqz v11, :cond_7

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    if-gez v0, :cond_6

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_4

    :cond_6
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :goto_4
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    :cond_7
    return-void
.end method

.method private applyReplacementRun(Landroid/text/style/ReplacementSpan;IIJ)V
    .locals 8

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v3, p2, v0

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v4, p3, v0

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1, p2, v0}, Landroid/text/AutoGrowArray$FloatArray;->set(IF)V

    add-int/lit8 v1, p2, 0x1

    if-le p3, v1, :cond_0

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, p3, v3}, Ljava/util/Arrays;->fill([FIIF)V

    :cond_0
    iget v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    add-float/2addr v1, v0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v3

    move-wide v1, p4

    move v5, p2

    move v6, p3

    move v7, v0

    invoke-static/range {v1 .. v7}, Landroid/text/MeasuredParagraph;->nAddReplacementRun(JJIIF)V

    :goto_0
    return-void
.end method

.method private applyStyleRun(IIJ)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    iget-boolean v1, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    const-wide/16 v8, 0x0

    if-eqz v1, :cond_1

    cmp-long v1, p3, v8

    if-nez v1, :cond_0

    iget v12, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    sub-int v4, v11, v10

    sub-int v6, v11, v10

    const/4 v7, 0x0

    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v3}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v8

    move v3, v10

    move v5, v10

    move v9, v10

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    add-float/2addr v12, v1

    iput v12, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto/16 :goto_5

    :cond_0
    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v3

    const/4 v7, 0x0

    move-wide/from16 v1, p3

    move v5, v10

    move v6, v11

    invoke-static/range {v1 .. v7}, Landroid/text/MeasuredParagraph;->nAddStyleRun(JJIIZ)V

    goto/16 :goto_5

    :cond_1
    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1, v10}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v1

    move v2, v10

    add-int/lit8 v3, v10, 0x1

    move v12, v1

    move/from16 v22, v2

    :goto_0
    move v7, v3

    if-eq v7, v11, :cond_3

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1, v7}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v1

    if-eq v1, v12, :cond_2

    goto :goto_1

    :cond_2
    move v13, v7

    goto :goto_6

    :cond_3
    :goto_1
    and-int/lit8 v1, v12, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    move/from16 v19, v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    cmp-long v1, p3, v8

    if-nez v1, :cond_5

    sub-int v1, v7, v22

    iget v2, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v13, v0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v4, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v4}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v20

    move-object v14, v3

    move/from16 v15, v22

    move/from16 v16, v1

    move/from16 v17, v22

    move/from16 v18, v1

    move/from16 v21, v22

    invoke-virtual/range {v13 .. v21}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    nop

    move v13, v7

    goto :goto_4

    :cond_5
    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getNativeInstance()J

    move-result-wide v3

    move-wide/from16 v1, p3

    move/from16 v5, v22

    move v6, v7

    move v13, v7

    move/from16 v7, v19

    invoke-static/range {v1 .. v7}, Landroid/text/MeasuredParagraph;->nAddStyleRun(JJIIZ)V

    :goto_4
    if-ne v13, v11, :cond_6

    nop

    :goto_5
    return-void

    :cond_6
    move/from16 v22, v13

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1, v13}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v1

    move v12, v1

    :goto_6
    add-int/lit8 v3, v13, 0x1

    goto :goto_0
.end method

.method private bindNativeObject(J)V
    .locals 1

    iput-wide p1, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    sget-object v0, Landroid/text/MeasuredParagraph;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mNativeObjectCleaner:Ljava/lang/Runnable;

    return-void
.end method

.method public static buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 1

    if-nez p4, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    return-object v0
.end method

.method public static buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 15

    move/from16 v7, p3

    if-nez p5, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p5

    :goto_0
    move-object v13, v0

    move-object/from16 v14, p1

    move/from16 v12, p2

    move-object/from16 v11, p4

    invoke-direct {v13, v14, v12, v7, v11}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    iget-object v0, v13, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    iget v1, v13, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    iget v0, v13, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_1

    return-object v13

    :cond_1
    iget-object v0, v13, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_2

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v13

    move-object v1, p0

    move v3, v12

    move v4, v7

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V

    move-object v5, v13

    goto :goto_2

    :cond_2
    move v0, v12

    :goto_1
    if-ge v0, v7, :cond_3

    iget-object v1, v13, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v7, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    iget-object v2, v13, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v0, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    iget-object v3, v13, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    const-wide/16 v3, 0x0

    move-object v8, v13

    move-object v9, p0

    move-object v10, v2

    move v11, v0

    move v12, v1

    move-object v5, v13

    move-wide v13, v3

    invoke-direct/range {v8 .. v14}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V

    move v0, v1

    move-object/from16 v14, p1

    move/from16 v12, p2

    move-object/from16 v11, p4

    move-object v13, v5

    goto :goto_1

    :cond_3
    move-object v5, v13

    :goto_2
    return-object v5
.end method

.method public static buildForStaticLayout(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;ZZLandroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 18

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    if-nez p7, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p7

    :goto_0
    move-object v11, v0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p4

    invoke-direct {v11, v12, v13, v8, v14}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    iget v0, v11, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_1

    invoke-static {}, Landroid/text/MeasuredParagraph;->nInitBuilder()J

    move-result-wide v0

    move-wide v1, v0

    :try_start_0
    iget-object v0, v11, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-static {v1, v2, v0, v9, v10}, Landroid/text/MeasuredParagraph;->nBuildNativeMeasuredParagraph(J[CZZ)J

    move-result-wide v3

    invoke-direct {v11, v3, v4}, Landroid/text/MeasuredParagraph;->bindNativeObject(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/text/MeasuredParagraph;->nFreeBuilder(J)V

    nop

    return-object v11

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/text/MeasuredParagraph;->nFreeBuilder(J)V

    throw v0

    :cond_1
    invoke-static {}, Landroid/text/MeasuredParagraph;->nInitBuilder()J

    move-result-wide v0

    move-wide v6, v0

    :try_start_1
    iget-object v0, v11, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-nez v0, :cond_2

    const/4 v3, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    move v4, v13

    move v5, v8

    move-wide v15, v6

    :try_start_2
    invoke-direct/range {v1 .. v7}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V

    iget-object v0, v11, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0, v8}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-wide v1, v15

    goto :goto_3

    :cond_2
    move-wide v15, v6

    move v0, v13

    :goto_1
    if-ge v0, v8, :cond_3

    iget-object v1, v11, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v8, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    move v6, v1

    iget-object v1, v11, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v6, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    iget-object v2, v11, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v1, v2, v3}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    move-object v1, v11

    move-object/from16 v2, p0

    move v4, v0

    move v5, v6

    move/from16 v17, v0

    move v0, v6

    move-wide v6, v15

    invoke-direct/range {v1 .. v7}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IIJ)V

    iget-object v1, v11, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1, v0}, Landroid/text/AutoGrowArray$IntArray;->append(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v1, v0

    goto :goto_1

    :cond_3
    :goto_2
    :try_start_3
    iget-object v0, v11, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-wide v1, v15

    :try_start_4
    invoke-static {v1, v2, v0, v9, v10}, Landroid/text/MeasuredParagraph;->nBuildNativeMeasuredParagraph(J[CZZ)J

    move-result-wide v3

    invoke-direct {v11, v3, v4}, Landroid/text/MeasuredParagraph;->bindNativeObject(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v1, v2}, Landroid/text/MeasuredParagraph;->nFreeBuilder(J)V

    nop

    return-object v11

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-wide v1, v15

    goto :goto_3

    :catchall_4
    move-exception v0

    move-wide v1, v6

    :goto_3
    invoke-static {v1, v2}, Landroid/text/MeasuredParagraph;->nFreeBuilder(J)V

    throw v0
.end method

.method private static native nAddReplacementRun(JJIIF)V
.end method

.method private static native nAddStyleRun(JJIIZ)V
.end method

.method private static native nBuildNativeMeasuredParagraph(J[CZZ)J
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nGetBounds(J[CIILandroid/graphics/Rect;)V
.end method

.method private static native nGetMemoryUsage(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetWidth(JII)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInitBuilder()J
.end method

.method private static obtain()Landroid/text/MeasuredParagraph;
    .locals 2

    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/MeasuredParagraph;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/text/MeasuredParagraph;

    invoke-direct {v1}, Landroid/text/MeasuredParagraph;-><init>()V

    :goto_0
    return-object v1
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->unbindNativeObject()V

    return-void
.end method

.method private resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 7

    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iput p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v0, p3, p2

    iput v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    :cond_2
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v3, p2

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p2

    if-gez v3, :cond_3

    const/4 v3, 0x0

    :cond_3
    iget v5, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-le v4, v5, :cond_4

    iget v4, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    :cond_4
    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const v6, 0xfffc

    invoke-static {v5, v3, v4, v6}, Ljava/util/Arrays;->fill([CIIC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v2, 0x1

    if-eq p4, v0, :cond_6

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p4, v0, :cond_6

    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_7

    :cond_6
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-static {v0, v1, v3}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    iput v2, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iput-boolean v2, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    goto :goto_4

    :cond_7
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_8

    const/4 v0, 0x1

    :goto_2
    goto :goto_3

    :cond_8
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_9

    const/4 v0, -0x1

    goto :goto_2

    :cond_9
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_a

    const/4 v0, 0x2

    goto :goto_2

    :cond_a
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_b

    const/4 v0, -0x2

    goto :goto_2

    :cond_b
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-interface {p4, v0, v1, v3}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v2, -0x1

    nop

    :cond_c
    move v0, v2

    :goto_3
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v2, v3}, Landroid/text/AutoGrowArray$ByteArray;->resize(I)V

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v3}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/text/AndroidBidi;->bidi(I[C[B)I

    move-result v2

    iput v2, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iput-boolean v1, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    :goto_4
    return-void
.end method

.method private unbindNativeObject()V
    .locals 4

    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mNativeObjectCleaner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-wide v2, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    :cond_0
    return-void
.end method


# virtual methods
.method breakText(IZF)I
    .locals 6

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    aget v4, v0, v3

    sub-float/2addr p3, v4

    cmpg-float v4, p3, v2

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v3, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v4, v3, -0x1

    aget-char v2, v2, v4

    if-ne v2, v1, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v3, p1, -0x1

    :goto_2
    if-ltz v3, :cond_5

    aget v4, v0, v3

    sub-float/2addr p3, v4

    cmpg-float v4, p3, v2

    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v4, v4, v5

    if-eq v4, v1, :cond_6

    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    sub-int v1, p1, v3

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getBounds(IILandroid/graphics/Rect;)V
    .locals 6

    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/MeasuredParagraph;->nGetBounds(J[CIILandroid/graphics/Rect;)V

    return-void
.end method

.method public getChars()[C
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    return-object v0
.end method

.method public getDirections(II)Landroid/text/Layout$Directions;
    .locals 7

    iget-boolean v0, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    :cond_0
    sub-int v0, p2, p1

    iget v1, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v2

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    move v3, p1

    move v5, p1

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v1

    return-object v1
.end method

.method public getFontMetrics()Landroid/text/AutoGrowArray$IntArray;
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public getMemoryUsage()I
    .locals 2

    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/text/MeasuredParagraph;->nGetMemoryUsage(J)I

    move-result v0

    return v0
.end method

.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    return-wide v0
.end method

.method public getParagraphDir()I
    .locals 1

    iget v0, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    return v0
.end method

.method public getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    return v0
.end method

.method public getWholeWidth()F
    .locals 1

    iget v0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    return v0
.end method

.method public getWidth(II)F
    .locals 4

    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_0

    aget v3, v0, v1

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    iget-wide v0, p0, Landroid/text/MeasuredParagraph;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/text/MeasuredParagraph;->nGetWidth(JII)F

    move-result v0

    return v0
.end method

.method public getWidths()Landroid/text/AutoGrowArray$FloatArray;
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    return-object v0
.end method

.method measure(II)F
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    move v2, v0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aget v3, v1, v0

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public recycle()V
    .locals 1

    invoke-virtual {p0}, Landroid/text/MeasuredParagraph;->release()V

    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 1

    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clearWithReleasingLargeArray()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clearWithReleasingLargeArray()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    return-void
.end method
