.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$LineBreaks;,
        Landroid/text/StaticLayout$Builder;
    }
.end annotation


# static fields
.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final COLUMNS_ELLIPSIZE:I = 0x7

.field private static final COLUMNS_NORMAL:I = 0x5

.field private static final DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x6

.field private static final ELLIPSIS_START:I = 0x5

.field private static final EXTRA:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x4

.field private static final HYPHEN_MASK:I = 0xff

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsized:Z

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLeftPaddings:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaxLineHeight:I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mRightPaddings:[I

.field private mTopPadding:I


# direct methods
.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 10

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :goto_1
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v5

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$700(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v8

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v9

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    iput-object v1, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v1, 0x7

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    :goto_2
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, v0

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1200(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1300(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1400(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1500(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftPaddings:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1600(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightPaddings:[I

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$1700(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->setJustificationMode(I)V

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v0

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v0, 0x7

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, v0

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    if-nez v10, :cond_0

    nop

    move-object v1, v9

    goto :goto_1

    :cond_0
    instance-of v0, v9, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, v9}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, v9}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :goto_1
    move-object v0, v8

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const/4 v0, -0x1

    iput v0, v8, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v4, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    move/from16 v5, p10

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    if-eqz v10, :cond_2

    invoke-virtual {v8}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Layout$Ellipsizer;

    iput-object v8, v6, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    iput v11, v6, Landroid/text/Layout$Ellipsizer;->mWidth:I

    iput-object v10, v6, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    iput v11, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v7, 0x7

    iput v7, v8, Landroid/text/StaticLayout;->mColumns:I

    nop

    move/from16 v6, p5

    goto :goto_2

    :cond_2
    const/4 v6, 0x5

    iput v6, v8, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v6, p5

    iput v6, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    :goto_2
    const-class v7, Landroid/text/Layout$Directions;

    const/4 v13, 0x2

    invoke-static {v7, v13}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/Layout$Directions;

    iput-object v7, v8, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget v7, v8, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v13, v7

    invoke-static {v13}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v7

    iput-object v7, v8, Landroid/text/StaticLayout;->mLines:[I

    iput v12, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v7

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$100(Landroid/text/StaticLayout$Builder;)Z

    move-result v13

    invoke-virtual {v8, v0, v7, v13}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->access$200(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-direct {v0, v2}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v3

    sub-float v3, p5, v3

    cmpg-float v5, p8, v3

    const/4 v6, 0x0

    const/4 v7, 0x5

    if-gtz v5, :cond_0

    if-nez p10, :cond_0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v8, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v8, v2

    add-int/2addr v8, v7

    aput v6, v5, v8

    iget-object v5, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v7, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v7, v2

    add-int/lit8 v7, v7, 0x6

    aput v6, v5, v7

    return-void

    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, p9

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int v6, p2, p1

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const/4 v12, 0x0

    const/4 v4, 0x1

    if-ne v1, v7, :cond_4

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v7, v4, :cond_3

    const/4 v7, 0x0

    move v11, v7

    move v7, v6

    :goto_0
    if-lez v7, :cond_2

    add-int/lit8 v13, v7, -0x1

    add-int v13, v13, p1

    sub-int v13, v13, p4

    aget v13, p3, v13

    add-float v14, v13, v11

    add-float/2addr v14, v5

    cmpl-float v14, v14, v3

    if-lez v14, :cond_1

    :goto_1
    if-ge v7, v6, :cond_2

    add-int v14, v7, p1

    sub-int v14, v14, p4

    aget v14, p3, v14

    cmpl-float v14, v14, v12

    if-nez v14, :cond_2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-float/2addr v11, v13

    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    move v10, v7

    goto/16 :goto_a

    :cond_3
    const-string v7, "StaticLayout"

    const/4 v4, 0x5

    invoke-static {v7, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v4, "StaticLayout"

    const-string v7, "Start Ellipsis only supported with one line"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_4
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v1, v4, :cond_c

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v1, v4, :cond_c

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v4, :cond_5

    goto/16 :goto_6

    :cond_5
    iget v4, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_b

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    move v13, v6

    sub-float v14, v3, v5

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    :goto_2
    if-lez v13, :cond_7

    add-int/lit8 v15, v13, -0x1

    add-int v15, v15, p1

    sub-int v15, v15, p4

    aget v15, p3, v15

    add-float v16, v15, v7

    cmpl-float v16, v16, v14

    if-lez v16, :cond_6

    move v1, v13

    :goto_3
    if-ge v1, v6, :cond_8

    add-int v13, v1, p1

    sub-int v13, v13, p4

    aget v13, p3, v13

    cmpl-float v13, v13, v12

    if-nez v13, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    add-float/2addr v7, v15

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v1, p6

    goto :goto_2

    :cond_7
    move v1, v13

    :cond_8
    sub-float v12, v3, v5

    sub-float/2addr v12, v7

    const/4 v11, 0x0

    move/from16 v17, v11

    move v11, v4

    move/from16 v4, v17

    :goto_4
    if-ge v4, v1, :cond_a

    add-int v13, v4, p1

    sub-int v13, v13, p4

    aget v13, p3, v13

    add-float v15, v13, v11

    cmpl-float v15, v15, v12

    if-lez v15, :cond_9

    goto :goto_5

    :cond_9
    add-float/2addr v11, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    move v9, v4

    sub-int v10, v1, v4

    goto :goto_a

    :cond_b
    const-string v1, "StaticLayout"

    const/4 v4, 0x5

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "StaticLayout"

    const-string v4, "Middle Ellipsis only supported with one line"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_c
    :goto_6
    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_7
    move v4, v11

    if-ge v4, v6, :cond_e

    add-int v7, v4, p1

    sub-int v7, v7, p4

    aget v7, p3, v7

    add-float v11, v7, v1

    add-float/2addr v11, v5

    cmpl-float v11, v11, v3

    if-lez v11, :cond_d

    goto :goto_8

    :cond_d
    add-float/2addr v1, v7

    add-int/lit8 v11, v4, 0x1

    goto :goto_7

    :cond_e
    :goto_8
    move v7, v4

    sub-int v9, v6, v4

    if-eqz p10, :cond_f

    if-nez v9, :cond_f

    if-lez v6, :cond_f

    add-int/lit8 v7, v6, -0x1

    const/4 v1, 0x1

    move v10, v1

    goto :goto_9

    :cond_f
    move v10, v9

    :goto_9
    move v9, v7

    :cond_10
    :goto_a
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    iget-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v4, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v2

    const/4 v7, 0x5

    add-int/2addr v4, v7

    aput v9, v1, v4

    iget-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v4, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x6

    aput v10, v1, v4

    return-void
.end method

.method private getTotalInsets(I)F
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    :cond_1
    int-to-float v1, v0

    return v1
.end method

.method private static native nComputeLineBreaks(J[CJIFIF[IIILandroid/text/StaticLayout$LineBreaks;I[I[F[F[F[I[F)I
.end method

.method private static native nFinish(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nInit(IIZ[I[I[I)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 31

    move-object/from16 v11, p0

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v15, p11

    move-object/from16 v9, p13

    move/from16 v8, p17

    move/from16 v10, p23

    move-object/from16 v7, p24

    iget v6, v11, Landroid/text/StaticLayout;->mLineCount:I

    iget v0, v11, Landroid/text/StaticLayout;->mColumns:I

    mul-int v16, v6, v0

    iget v0, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v0, v16, v0

    const/4 v5, 0x1

    add-int/lit8 v4, v0, 0x1

    iget-object v0, v11, Landroid/text/StaticLayout;->mLines:[I

    invoke-virtual/range {p16 .. p16}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v17

    array-length v1, v0

    const/4 v3, 0x0

    if-lt v4, v1, :cond_0

    invoke-static {v4}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v11, Landroid/text/StaticLayout;->mLines:[I

    move-object v0, v1

    :cond_0
    move-object/from16 v18, v0

    iget-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    if-lt v6, v0, :cond_1

    const-class v0, Landroid/text/Layout$Directions;

    invoke-static {v6}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iget-object v1, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v2, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    :cond_1
    if-eqz v15, :cond_4

    move/from16 v2, p4

    iput v2, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v1, p5

    iput v1, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, p6

    iput v0, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v8, p7

    iput v8, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v19, v3

    :goto_0
    move/from16 v20, v19

    array-length v3, v15

    move/from16 v8, v20

    if-ge v8, v3, :cond_3

    aget-object v3, v15, v8

    instance-of v3, v3, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v3, :cond_2

    aget-object v3, v15, v8

    check-cast v3, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v19, p12, v8

    move-object v0, v3

    move-object/from16 v1, p1

    move v2, v12

    const/16 v20, 0x0

    move v3, v13

    move/from16 v21, v4

    move/from16 v4, v19

    move v10, v5

    move/from16 v5, p8

    move/from16 v19, v6

    move-object v6, v9

    move-object v10, v7

    move-object/from16 v7, p27

    invoke-interface/range {v0 .. v7}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    goto :goto_1

    :cond_2
    move/from16 v21, v4

    move/from16 v19, v6

    move-object v10, v7

    const/16 v20, 0x0

    aget-object v0, v15, v8

    aget v4, p12, v8

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    move/from16 v5, p8

    move-object v6, v9

    invoke-interface/range {v0 .. v6}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    :goto_1
    add-int/lit8 v0, v8, 0x1

    move/from16 v2, p4

    move/from16 v1, p5

    move-object v7, v10

    move/from16 v6, v19

    move/from16 v3, v20

    move/from16 v4, v21

    const/4 v5, 0x1

    move/from16 v8, p7

    move/from16 v10, p23

    move/from16 v19, v0

    move/from16 v0, p6

    goto :goto_0

    :cond_3
    move/from16 v21, v4

    move/from16 v19, v6

    move-object v10, v7

    const/16 v20, 0x0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v1, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v22, v0

    move/from16 v25, v1

    move/from16 v26, v2

    move/from16 v27, v3

    goto :goto_2

    :cond_4
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v19, v6

    move-object v10, v7

    move/from16 v22, p4

    move/from16 v25, p5

    move/from16 v26, p6

    move/from16 v27, p7

    :goto_2
    if-nez v19, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    move/from16 v0, v20

    :goto_3
    move/from16 v28, v0

    add-int/lit8 v6, v19, 0x1

    iget v0, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v6, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    move/from16 v0, v20

    :goto_4
    move/from16 v29, v0

    if-eqz v10, :cond_10

    if-eqz p28, :cond_7

    iget v0, v11, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v2, :cond_8

    move v0, v1

    goto :goto_5

    :cond_7
    const/4 v1, 0x1

    :cond_8
    move/from16 v0, v20

    :goto_5
    move v6, v1

    move-object v7, v10

    move/from16 v8, p23

    move v10, v0

    iget v0, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v0, v6, :cond_9

    if-nez p28, :cond_a

    :cond_9
    if-eqz v28, :cond_b

    if-nez p28, :cond_b

    :cond_a
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v0, :cond_d

    :cond_b
    if-nez v28, :cond_e

    if-nez v29, :cond_c

    if-nez p28, :cond_e

    :cond_c
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v0, :cond_e

    :cond_d
    move v0, v6

    goto :goto_6

    :cond_e
    move/from16 v0, v20

    :goto_6
    move/from16 v23, v0

    if-eqz v23, :cond_f

    move-object v0, v11

    move v1, v12

    move v2, v13

    move-object/from16 v3, p22

    move v4, v8

    move/from16 v5, p25

    move/from16 v24, v6

    move-object v6, v7

    move/from16 v7, v19

    move v14, v8

    move/from16 v15, p17

    move/from16 v8, p26

    move-object/from16 v9, p27

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    goto :goto_7

    :cond_f
    move/from16 v24, v6

    move v14, v8

    move/from16 v15, p17

    goto :goto_7

    :cond_10
    move/from16 v14, p23

    move/from16 v15, p17

    const/16 v24, 0x1

    :goto_7
    iget-boolean v0, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v0, :cond_11

    const/4 v3, 0x1

    move-object/from16 v1, p1

    goto :goto_a

    :cond_11
    if-eq v14, v15, :cond_12

    if-lez v15, :cond_12

    add-int/lit8 v0, v15, -0x1

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_13

    move/from16 v0, v24

    goto :goto_8

    :cond_12
    move-object/from16 v1, p1

    :cond_13
    move/from16 v0, v20

    :goto_8
    if-ne v13, v15, :cond_14

    if-nez v0, :cond_14

    const/4 v3, 0x1

    :goto_9
    goto :goto_a

    :cond_14
    if-ne v12, v15, :cond_15

    if-eqz v0, :cond_15

    const/4 v3, 0x1

    goto :goto_9

    :cond_15
    nop

    move/from16 v3, v20

    :goto_a
    move v0, v3

    if-eqz v28, :cond_17

    if-eqz p19, :cond_16

    sub-int v2, v26, v22

    iput v2, v11, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_16
    if-eqz p18, :cond_17

    move/from16 v22, v26

    :cond_17
    if-eqz v0, :cond_19

    if-eqz p19, :cond_18

    sub-int v2, v27, v25

    iput v2, v11, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_18
    if-eqz p18, :cond_19

    move/from16 v25, v27

    :cond_19
    if-eqz p15, :cond_1d

    if-nez p20, :cond_1b

    if-nez v0, :cond_1a

    goto :goto_b

    :cond_1a
    move/from16 v30, v0

    goto :goto_d

    :cond_1b
    :goto_b
    sub-int v4, v25, v22

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, p9, v5

    mul-float/2addr v4, v5

    add-float v4, v4, p10

    float-to-double v7, v4

    const-wide/16 v9, 0x0

    cmpl-double v4, v7, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    if-ltz v4, :cond_1c

    add-double/2addr v9, v7

    double-to-int v4, v9

    move/from16 v30, v0

    goto :goto_c

    :cond_1c
    move/from16 v30, v0

    neg-double v0, v7

    add-double/2addr v0, v9

    double-to-int v0, v0

    neg-int v4, v0

    :goto_c
    move v0, v4

    goto :goto_e

    :cond_1d
    move/from16 v30, v0

    :goto_d
    move/from16 v0, v20

    :goto_e
    add-int/lit8 v1, v16, 0x0

    aput v12, v18, v1

    add-int/lit8 v1, v16, 0x1

    move v7, v14

    aput p8, v18, v1

    add-int/lit8 v1, v16, 0x2

    add-int v8, v25, v0

    aput v8, v18, v1

    add-int/lit8 v1, v16, 0x3

    aput v0, v18, v1

    iget-boolean v1, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v1, :cond_1f

    if-eqz v29, :cond_1f

    if-eqz p18, :cond_1e

    move/from16 v1, v27

    goto :goto_f

    :cond_1e
    move/from16 v1, v25

    :goto_f
    sub-int v8, v1, v22

    add-int v8, p8, v8

    iput v8, v11, Landroid/text/StaticLayout;->mMaxLineHeight:I

    :cond_1f
    sub-int v1, v25, v22

    add-int/2addr v1, v0

    add-int v1, p8, v1

    iget v4, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v4, v16, v4

    add-int/lit8 v4, v4, 0x0

    aput v13, v18, v4

    iget v4, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v4, v16, v4

    add-int/lit8 v4, v4, 0x1

    aput v1, v18, v4

    add-int/lit8 v4, v16, 0x0

    aget v8, v18, v4

    const/high16 v9, 0x20000000

    and-int v9, p14, v9

    or-int/2addr v8, v9

    aput v8, v18, v4

    add-int/lit8 v4, v16, 0x4

    aput p14, v18, v4

    add-int/lit8 v4, v16, 0x0

    aget v8, v18, v4

    shl-int/lit8 v9, v17, 0x1e

    or-int/2addr v8, v9

    aput v8, v18, v4

    iget-object v4, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v8, v12, v7

    sub-int v9, v13, v7

    move-object/from16 v10, p16

    invoke-virtual {v10, v8, v9}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v8

    aput-object v8, v4, v19

    iget v4, v11, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v11, Landroid/text/StaticLayout;->mLineCount:I

    return v1
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 98

    move-object/from16 v15, p0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$400(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1800(Landroid/text/StaticLayout$Builder;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1900(Landroid/text/StaticLayout$Builder;)I

    move-result v12

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$500(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v11

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$600(Landroid/text/StaticLayout$Builder;)I

    move-result v46

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$800(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2000(Landroid/text/StaticLayout$Builder;)Z

    move-result v47

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)F

    move-result v48

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;)F

    move-result v49

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1100(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    int-to-float v9, v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$300(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2100(Landroid/text/StaticLayout$Builder;)Z

    move-result v50

    new-instance v0, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct {v0}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    move-object v7, v0

    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    move-object v6, v0

    const/4 v0, 0x0

    iput v0, v15, Landroid/text/StaticLayout;->mLineCount:I

    iput-boolean v0, v15, Landroid/text/StaticLayout;->mEllipsized:Z

    iget v1, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v5, 0x1

    if-ge v1, v5, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v15, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const/16 v17, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v48, v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    cmpl-float v1, v49, v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v0

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v16, v5

    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2200(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/16 v18, 0x0

    iget-object v1, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v1, :cond_4

    iget-object v1, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    const/16 v59, 0x0

    goto :goto_8

    :cond_4
    :goto_3
    iget-object v1, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_4

    :cond_5
    iget-object v1, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v1, v1

    :goto_4
    iget-object v2, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_5

    :cond_6
    iget-object v2, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    :goto_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v5, v3, [I

    move/from16 v19, v0

    :goto_6
    move/from16 v53, v19

    move/from16 v0, v53

    if-ge v0, v1, :cond_7

    move/from16 v54, v1

    iget-object v1, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    aget v1, v1, v0

    aput v1, v5, v0

    add-int/lit8 v19, v0, 0x1

    move/from16 v1, v54

    const/4 v0, 0x0

    goto :goto_6

    :cond_7
    move/from16 v54, v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_8

    aget v1, v5, v0

    move/from16 v55, v2

    iget-object v2, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    aput v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v55

    goto :goto_7

    :cond_8
    nop

    move-object/from16 v59, v5

    :goto_8
    nop

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v56

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v57

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$1700(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    if-eqz v0, :cond_9

    const/16 v58, 0x1

    goto :goto_9

    :cond_9
    const/16 v58, 0x0

    :goto_9
    iget-object v0, v15, Landroid/text/StaticLayout;->mLeftPaddings:[I

    iget-object v1, v15, Landroid/text/StaticLayout;->mRightPaddings:[I

    move-object/from16 v60, v0

    move-object/from16 v61, v1

    invoke-static/range {v56 .. v61}, Landroid/text/StaticLayout;->nInit(IIZ[I[I[I)J

    move-result-wide v2

    const/4 v0, 0x0

    instance-of v1, v14, Landroid/text/Spanned;

    if-eqz v1, :cond_a

    move-object v1, v14

    check-cast v1, Landroid/text/Spanned;

    goto :goto_a

    :cond_a
    const/4 v1, 0x0

    :goto_a
    move-object v5, v1

    instance-of v1, v14, Landroid/text/PrecomputedText;

    if-eqz v1, :cond_b

    move-object v1, v14

    check-cast v1, Landroid/text/PrecomputedText;

    nop

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v19

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v20

    move-object/from16 v62, v1

    move-wide/from16 v63, v2

    move v2, v13

    move-object/from16 v65, v0

    const/4 v0, 0x0

    move v3, v12

    move/from16 v66, v9

    move-object v9, v4

    move-object v4, v10

    move-object/from16 v67, v9

    const/4 v0, 0x1

    move-object v9, v5

    move-object v5, v11

    move-object/from16 v68, v8

    move-object v8, v6

    move/from16 v6, v19

    move-object/from16 v69, v7

    move/from16 v7, v20

    invoke-virtual/range {v1 .. v7}, Landroid/text/PrecomputedText;->canUseMeasuredResult(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;II)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object/from16 v1, v62

    invoke-virtual {v1}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v1

    goto :goto_b

    :cond_b
    move-object/from16 v65, v0

    move-wide/from16 v63, v2

    move-object/from16 v67, v4

    move-object/from16 v69, v7

    move-object/from16 v68, v8

    move/from16 v66, v9

    const/4 v0, 0x1

    move-object v9, v5

    move-object v8, v6

    :cond_c
    move-object/from16 v1, v65

    :goto_b
    if-nez v1, :cond_d

    new-instance v2, Landroid/text/PrecomputedText$Params;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2300(Landroid/text/StaticLayout$Builder;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->access$2400(Landroid/text/StaticLayout$Builder;)I

    move-result v4

    invoke-direct {v2, v11, v10, v3, v4}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    const/4 v3, 0x0

    invoke-static {v14, v2, v13, v12, v3}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v1

    :cond_d
    move-object v7, v1

    move/from16 v3, v17

    move-object/from16 v2, v18

    const/4 v1, 0x0

    :goto_c
    move v4, v1

    :try_start_0
    array-length v1, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_17

    if-ge v4, v1, :cond_30

    if-nez v4, :cond_e

    move v1, v13

    goto :goto_d

    :cond_e
    add-int/lit8 v1, v4, -0x1

    :try_start_1
    aget-object v1, v7, v1

    iget v1, v1, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    :goto_d
    aget-object v5, v7, v4

    iget v5, v5, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    move v6, v5

    const/4 v5, 0x1

    move/from16 v17, v46

    move/from16 v18, v46

    const/16 v19, 0x0

    if-eqz v9, :cond_16

    :try_start_2
    const-class v0, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v9, v1, v6, v0}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/LeadingMarginSpan;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v70, v10

    move v10, v5

    const/4 v5, 0x0

    :goto_e
    move-object/from16 v71, v11

    :try_start_3
    array-length v11, v0

    if-ge v5, v11, :cond_10

    aget-object v11, v0, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v72, v13

    :try_start_4
    aget-object v13, v0, v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v73, v14

    const/4 v14, 0x1

    :try_start_5
    invoke-interface {v13, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v13

    sub-int v17, v17, v13

    aget-object v13, v0, v5

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v13

    sub-int v18, v18, v13

    instance-of v13, v11, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v13, :cond_f

    move-object v13, v11

    check-cast v13, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    nop

    invoke-interface {v13}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v14

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v10, v14

    :cond_f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v11, v71

    move/from16 v13, v72

    move-object/from16 v14, v73

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object/from16 v38, v2

    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move-object v5, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    goto/16 :goto_26

    :cond_10
    move/from16 v72, v13

    move-object/from16 v73, v14

    const-class v5, Landroid/text/style/LineHeightSpan;

    invoke-static {v9, v1, v6, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LineHeightSpan;

    array-length v11, v5

    if-nez v11, :cond_12

    const/4 v5, 0x0

    :cond_11
    move-object/from16 v38, v2

    move-object v0, v5

    move/from16 v37, v10

    move/from16 v14, v17

    move/from16 v13, v18

    goto/16 :goto_11

    :cond_12
    if-eqz v2, :cond_13

    array-length v11, v2

    array-length v13, v5

    if-ge v11, v13, :cond_14

    :cond_13
    array-length v11, v5

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v11

    move-object v2, v11

    :cond_14
    const/4 v11, 0x0

    :goto_f
    array-length v13, v5

    if-ge v11, v13, :cond_11

    aget-object v13, v5, v11

    invoke-interface {v9, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    if-ge v13, v1, :cond_15

    invoke-virtual {v15, v13}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v14

    invoke-virtual {v15, v14}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v14

    aput v14, v2, v11

    goto :goto_10

    :cond_15
    aput v3, v2, v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :catchall_1
    move-exception v0

    move-object/from16 v38, v2

    goto/16 :goto_13

    :catchall_2
    move-exception v0

    move-object/from16 v38, v2

    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move v4, v13

    move-object v5, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    goto/16 :goto_26

    :catchall_3
    move-exception v0

    move-object/from16 v38, v2

    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move-object v6, v10

    move-object v7, v11

    move v1, v12

    move v4, v13

    move-object v5, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    goto/16 :goto_26

    :cond_16
    move-object/from16 v70, v10

    move-object/from16 v71, v11

    move/from16 v72, v13

    move-object/from16 v73, v14

    move-object/from16 v38, v2

    move/from16 v37, v5

    move/from16 v14, v17

    move/from16 v13, v18

    move-object/from16 v0, v19

    :goto_11
    const/4 v2, 0x0

    if-eqz v9, :cond_18

    :try_start_6
    const-class v5, Landroid/text/style/TabStopSpan;

    invoke-static {v9, v1, v6, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/TabStopSpan;

    array-length v10, v5

    if-lez v10, :cond_18

    array-length v10, v5

    new-array v10, v10, [I

    const/4 v11, 0x0

    :goto_12
    move-object/from16 v74, v2

    array-length v2, v5

    if-ge v11, v2, :cond_17

    aget-object v2, v5, v11

    invoke-interface {v2}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v2

    aput v2, v10, v11

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v74

    goto :goto_12

    :cond_17
    array-length v2, v10

    const/4 v11, 0x0

    invoke-static {v10, v11, v2}, Ljava/util/Arrays;->sort([III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-object v2, v10

    move-object/from16 v74, v2

    goto :goto_14

    :catchall_4
    move-exception v0

    :goto_13
    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    goto/16 :goto_26

    :cond_18
    move-object/from16 v74, v2

    :goto_14
    :try_start_7
    aget-object v2, v7, v4

    iget-object v2, v2, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    move-object v11, v2

    invoke-virtual {v11}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v2

    move-object v10, v2

    invoke-virtual {v11}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v2

    move-object/from16 v39, v2

    invoke-virtual {v11}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v2

    move-object/from16 v40, v2

    array-length v2, v10

    invoke-virtual {v8, v2}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    nop

    invoke-virtual {v11}, Landroid/text/MeasuredParagraph;->getNativePtr()J

    move-result-wide v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_11

    sub-int v22, v6, v1

    int-to-float v2, v14

    int-to-float v5, v13

    const/16 v27, 0x14

    move/from16 v75, v3

    :try_start_8
    iget v3, v15, Landroid/text/StaticLayout;->mLineCount:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_10

    move/from16 v77, v4

    move/from16 v76, v14

    move-object/from16 v14, v69

    :try_start_9
    iget-object v4, v14, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    array-length v4, v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_f

    move-object/from16 v78, v7

    :try_start_a
    iget-object v7, v14, Landroid/text/StaticLayout$LineBreaks;->breaks:[I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    move-object/from16 v79, v9

    :try_start_b
    iget-object v9, v14, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v80, v11

    iget-object v11, v14, Landroid/text/StaticLayout$LineBreaks;->ascents:[F

    move/from16 v81, v13

    iget-object v13, v14, Landroid/text/StaticLayout$LineBreaks;->descents:[F

    move-object/from16 v82, v0

    iget-object v0, v14, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    invoke-virtual {v8}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v36

    move-wide/from16 v17, v63

    move-object/from16 v19, v10

    move/from16 v23, v2

    move/from16 v24, v37

    move/from16 v25, v5

    move-object/from16 v26, v74

    move/from16 v28, v3

    move-object/from16 v29, v14

    move/from16 v30, v4

    move-object/from16 v31, v7

    move-object/from16 v32, v9

    move-object/from16 v33, v11

    move-object/from16 v34, v13

    move-object/from16 v35, v0

    invoke-static/range {v17 .. v36}, Landroid/text/StaticLayout;->nComputeLineBreaks(J[CJIFIF[IIILandroid/text/StaticLayout$LineBreaks;I[I[F[F[F[I[F)I

    move-result v0

    iget-object v2, v14, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v30, v2

    iget-object v2, v14, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v31, v2

    iget-object v2, v14, Landroid/text/StaticLayout$LineBreaks;->ascents:[F

    move-object/from16 v32, v2

    iget-object v2, v14, Landroid/text/StaticLayout$LineBreaks;->descents:[F

    move-object/from16 v33, v2

    iget-object v2, v14, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v34, v2

    iget v2, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v3, v15, Landroid/text/StaticLayout;->mLineCount:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_d

    sub-int v13, v2, v3

    if-eqz v68, :cond_1a

    :try_start_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object/from16 v9, v68

    if-eq v9, v2, :cond_19

    :try_start_d
    iget v2, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v9, v2, :cond_1b

    goto :goto_15

    :catchall_5
    move-exception v0

    move-object/from16 v56, v8

    move-object/from16 v55, v9

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v67, v14

    goto/16 :goto_26

    :cond_19
    :goto_15
    const/4 v2, 0x1

    goto :goto_16

    :catchall_6
    move-exception v0

    move-object/from16 v56, v8

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v67, v14

    goto/16 :goto_26

    :cond_1a
    move-object/from16 v9, v68

    :cond_1b
    const/4 v2, 0x0

    :goto_16
    move/from16 v35, v2

    if-lez v13, :cond_20

    if-ge v13, v0, :cond_20

    if-eqz v35, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x0

    add-int/lit8 v4, v13, -0x1

    :goto_17
    if-ge v4, v0, :cond_1f

    add-int/lit8 v5, v0, -0x1

    if-ne v4, v5, :cond_1c

    aget v5, v31, v4

    add-float/2addr v2, v5

    goto :goto_19

    :cond_1c
    if-nez v4, :cond_1d

    const/4 v5, 0x0

    goto :goto_18

    :cond_1d
    add-int/lit8 v5, v4, -0x1

    aget v5, v30, v5

    :goto_18
    aget v7, v30, v4

    if-ge v5, v7, :cond_1e

    invoke-virtual {v8, v5}, Landroid/text/AutoGrowArray$FloatArray;->get(I)F

    move-result v7

    add-float/2addr v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_1e
    :goto_19
    aget v5, v34, v4

    const/high16 v7, 0x20000000

    and-int/2addr v5, v7

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_1f
    add-int/lit8 v4, v13, -0x1

    add-int/lit8 v5, v0, -0x1

    aget v5, v30, v5

    aput v5, v30, v4

    add-int/lit8 v4, v13, -0x1

    aput v2, v31, v4

    add-int/lit8 v4, v13, -0x1

    aput v3, v34, v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move v0, v13

    :cond_20
    move v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v19, v18

    move/from16 v18, v11

    move v11, v7

    move v7, v5

    move v5, v4

    move v4, v3

    move v3, v2

    :goto_1a
    if-ge v2, v6, :cond_2e

    add-int/lit8 v36, v17, 0x1

    :try_start_e
    aget v17, v39, v17

    move/from16 v83, v17

    mul-int/lit8 v17, v18, 0x4

    const/16 v20, 0x0

    add-int/lit8 v17, v17, 0x0

    move/from16 v84, v3

    aget v3, v40, v17
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    move-object/from16 v85, v9

    move-object/from16 v9, v67

    :try_start_f
    iput v3, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    mul-int/lit8 v3, v18, 0x4

    const/16 v41, 0x1

    add-int/lit8 v3, v3, 0x1

    aget v3, v40, v3

    iput v3, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    mul-int/lit8 v3, v18, 0x4

    add-int/lit8 v3, v3, 0x2

    aget v3, v40, v3

    iput v3, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    mul-int/lit8 v3, v18, 0x4

    add-int/lit8 v3, v3, 0x3

    aget v3, v40, v3

    iput v3, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/lit8 v42, v18, 0x1

    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    if-ge v3, v4, :cond_21

    :try_start_10
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    move v4, v3

    goto :goto_1b

    :catchall_7
    move-exception v0

    move-object/from16 v56, v8

    move-object v3, v9

    move v1, v12

    move-object/from16 v67, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v55, v85

    goto/16 :goto_26

    :cond_21
    :goto_1b
    :try_start_11
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    if-ge v3, v7, :cond_22

    :try_start_12
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move v7, v3

    :cond_22
    :try_start_13
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    if-le v3, v11, :cond_23

    :try_start_14
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    move v11, v3

    :cond_23
    :try_start_15
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    if-le v3, v5, :cond_24

    :try_start_16
    iget v3, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move v5, v3

    :cond_24
    move/from16 v3, v19

    :goto_1c
    if-ge v3, v0, :cond_25

    aget v17, v30, v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    move/from16 v86, v4

    add-int v4, v1, v17

    if-ge v4, v2, :cond_26

    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v86

    goto :goto_1c

    :cond_25
    move/from16 v86, v4

    :cond_26
    move/from16 v43, v5

    move v4, v11

    move v11, v3

    :goto_1d
    if-ge v11, v0, :cond_2d

    :try_start_17
    aget v3, v30, v11

    add-int/2addr v3, v1

    move/from16 v5, v83

    if-gt v3, v5, :cond_2c

    aget v3, v30, v11
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    add-int/2addr v3, v1

    if-ge v3, v12, :cond_27

    move/from16 v29, v41

    goto :goto_1e

    :cond_27
    const/16 v29, 0x0

    :goto_1e
    if-eqz v47, :cond_28

    move/from16 v87, v0

    :try_start_18
    aget v0, v32, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1f

    :cond_28
    move/from16 v87, v0

    move v0, v7

    :goto_1f
    move/from16 v88, v5

    move v5, v0

    if-eqz v47, :cond_29

    aget v0, v33, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_20

    :cond_29
    move v0, v4

    :goto_20
    move/from16 v89, v6

    move v6, v0

    :try_start_19
    aget v0, v34, v11

    invoke-virtual {v8}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v23

    aget v27, v31, v11
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    move/from16 v44, v1

    move-object v1, v15

    move/from16 v45, v2

    move-object/from16 v2, v73

    move/from16 v90, v3

    move/from16 v3, v84

    move/from16 v52, v4

    move/from16 v51, v77

    move/from16 v4, v90

    move/from16 v54, v7

    move-object/from16 v53, v78

    move/from16 v7, v86

    move-object/from16 v56, v8

    move-object/from16 v55, v85

    move/from16 v8, v43

    move-object/from16 v91, v9

    move/from16 v57, v66

    move-object/from16 v58, v79

    move/from16 v9, v75

    move-object/from16 v60, v10

    move-object/from16 v92, v70

    move/from16 v10, v48

    move/from16 v62, v11

    move-object/from16 v93, v71

    move-object/from16 v61, v80

    move/from16 v11, v49

    move/from16 v94, v12

    move-object/from16 v12, v82

    move/from16 v66, v13

    move/from16 v95, v72

    move/from16 v65, v81

    move-object/from16 v13, v38

    move-object/from16 v67, v14

    move-object/from16 v96, v73

    move/from16 v68, v76

    move-object/from16 v14, v91

    move v15, v0

    move-object/from16 v17, v61

    move/from16 v18, v94

    move/from16 v19, p2

    move/from16 v20, p3

    move/from16 v21, v50

    move-object/from16 v22, v60

    move/from16 v24, v44

    move-object/from16 v25, v55

    move/from16 v26, v57

    move-object/from16 v28, v93

    :try_start_1a
    invoke-direct/range {v1 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    move/from16 v75, v0

    move/from16 v0, v88

    move/from16 v1, v90

    if-ge v1, v0, :cond_2a

    move-object/from16 v3, v91

    :try_start_1b
    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v8, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    move/from16 v86, v2

    move/from16 v43, v4

    move v4, v8

    const/4 v2, 0x0

    goto :goto_21

    :catchall_8
    move-exception v0

    move-wide/from16 v9, v63

    move-object/from16 v6, v92

    move-object/from16 v7, v93

    move/from16 v1, v94

    move/from16 v4, v95

    move-object/from16 v5, v96

    move-object/from16 v8, p0

    goto/16 :goto_26

    :cond_2a
    move-object/from16 v3, v91

    const/4 v2, 0x0

    move v4, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move/from16 v43, v8

    move/from16 v86, v9

    :goto_21
    move/from16 v84, v1

    add-int/lit8 v11, v62, 0x1

    move-object/from16 v8, p0

    :try_start_1c
    iget v9, v8, Landroid/text/StaticLayout;->mLineCount:I

    iget v10, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_2b

    iget-boolean v9, v8, Landroid/text/StaticLayout;->mEllipsized:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    if-eqz v9, :cond_2b

    move-wide/from16 v9, v63

    invoke-static {v9, v10}, Landroid/text/StaticLayout;->nFinish(J)V

    return-void

    :cond_2b
    move-wide/from16 v9, v63

    move/from16 v83, v0

    move-object v15, v8

    move-wide/from16 v63, v9

    move/from16 v1, v44

    move/from16 v2, v45

    move/from16 v77, v51

    move-object/from16 v78, v53

    move-object/from16 v85, v55

    move-object/from16 v8, v56

    move-object/from16 v79, v58

    move-object/from16 v10, v60

    move-object/from16 v80, v61

    move/from16 v81, v65

    move/from16 v13, v66

    move-object/from16 v14, v67

    move/from16 v76, v68

    move/from16 v0, v87

    move/from16 v6, v89

    move-object/from16 v70, v92

    move-object/from16 v71, v93

    move/from16 v12, v94

    move/from16 v72, v95

    move-object/from16 v73, v96

    move-object v9, v3

    move/from16 v66, v57

    goto/16 :goto_1d

    :catchall_9
    move-exception v0

    move-wide/from16 v9, v63

    move-object/from16 v6, v92

    move-object/from16 v7, v93

    move/from16 v1, v94

    move/from16 v4, v95

    move-object/from16 v5, v96

    goto/16 :goto_26

    :catchall_a
    move-exception v0

    move-wide/from16 v9, v63

    move-object/from16 v3, v91

    move-object/from16 v8, p0

    move-object/from16 v6, v92

    move-object/from16 v7, v93

    move/from16 v1, v94

    move/from16 v4, v95

    move-object/from16 v5, v96

    goto/16 :goto_26

    :cond_2c
    move/from16 v87, v0

    move/from16 v44, v1

    move/from16 v45, v2

    move/from16 v52, v4

    move v0, v5

    move/from16 v89, v6

    move/from16 v54, v7

    move-object/from16 v56, v8

    move-object v3, v9

    move-object/from16 v60, v10

    move/from16 v62, v11

    move/from16 v94, v12

    move-object/from16 v67, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v92, v70

    move-object/from16 v93, v71

    move/from16 v95, v72

    move-object/from16 v96, v73

    move/from16 v68, v76

    move/from16 v51, v77

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v61, v80

    move/from16 v65, v81

    move-object/from16 v55, v85

    const/4 v2, 0x0

    move/from16 v66, v13

    goto :goto_22

    :cond_2d
    move/from16 v87, v0

    move/from16 v44, v1

    move/from16 v45, v2

    move/from16 v52, v4

    move/from16 v89, v6

    move/from16 v54, v7

    move-object/from16 v56, v8

    move-object v3, v9

    move-object/from16 v60, v10

    move/from16 v62, v11

    move/from16 v94, v12

    move-object/from16 v67, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v92, v70

    move-object/from16 v93, v71

    move/from16 v95, v72

    move-object/from16 v96, v73

    move/from16 v68, v76

    move/from16 v51, v77

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v61, v80

    move/from16 v65, v81

    move/from16 v0, v83

    move-object/from16 v55, v85

    const/4 v2, 0x0

    move/from16 v66, v13

    :goto_22
    move v1, v0

    move v2, v1

    move-object v15, v8

    move-wide/from16 v63, v9

    move/from16 v17, v36

    move/from16 v18, v42

    move/from16 v5, v43

    move/from16 v1, v44

    move/from16 v77, v51

    move/from16 v11, v52

    move-object/from16 v78, v53

    move/from16 v7, v54

    move-object/from16 v9, v55

    move-object/from16 v8, v56

    move-object/from16 v79, v58

    move-object/from16 v10, v60

    move-object/from16 v80, v61

    move/from16 v19, v62

    move/from16 v81, v65

    move/from16 v13, v66

    move-object/from16 v14, v67

    move/from16 v76, v68

    move/from16 v4, v86

    move/from16 v0, v87

    move/from16 v6, v89

    move-object/from16 v70, v92

    move-object/from16 v71, v93

    move/from16 v12, v94

    move/from16 v72, v95

    move-object/from16 v73, v96

    move-object/from16 v67, v3

    move/from16 v66, v57

    move/from16 v3, v84

    goto/16 :goto_1a

    :catchall_b
    move-exception v0

    move-object/from16 v56, v8

    move-object v3, v9

    move-object/from16 v67, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v55, v85

    move v1, v12

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    goto/16 :goto_26

    :catchall_c
    move-exception v0

    move-object/from16 v56, v8

    move-object/from16 v55, v9

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v67, v14

    move v1, v12

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    goto/16 :goto_26

    :cond_2e
    move/from16 v87, v0

    move/from16 v44, v1

    move/from16 v84, v3

    move/from16 v89, v6

    move-object/from16 v56, v8

    move-object/from16 v55, v9

    move-object/from16 v60, v10

    move/from16 v94, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v92, v70

    move-object/from16 v93, v71

    move/from16 v95, v72

    move-object/from16 v96, v73

    move/from16 v68, v76

    move/from16 v51, v77

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v61, v80

    move/from16 v65, v81

    const/4 v2, 0x0

    const/16 v41, 0x1

    move/from16 v66, v13

    move-object/from16 v67, v14

    move/from16 v0, v89

    move/from16 v1, v94

    if-ne v0, v1, :cond_2f

    nop

    move-object/from16 v2, v38

    goto/16 :goto_23

    :cond_2f
    add-int/lit8 v0, v51, 0x1

    move v12, v1

    move-object v15, v8

    move-wide/from16 v63, v9

    move-object/from16 v2, v38

    move-object/from16 v7, v53

    move-object/from16 v68, v55

    move-object/from16 v8, v56

    move/from16 v66, v57

    move-object/from16 v9, v58

    move-object/from16 v69, v67

    move-object/from16 v10, v92

    move-object/from16 v11, v93

    move/from16 v13, v95

    move-object/from16 v14, v96

    move v1, v0

    move-object/from16 v67, v3

    move/from16 v0, v41

    move/from16 v3, v75

    goto/16 :goto_c

    :catchall_d
    move-exception v0

    move-object/from16 v56, v8

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v53, v78

    move-object/from16 v58, v79

    move-object/from16 v67, v14

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    goto/16 :goto_26

    :catchall_e
    move-exception v0

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v53, v78

    move-object/from16 v67, v14

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    goto/16 :goto_26

    :catchall_f
    move-exception v0

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v14

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    goto/16 :goto_26

    :catchall_10
    move-exception v0

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    goto/16 :goto_26

    :catchall_11
    move-exception v0

    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    move/from16 v4, v72

    move-object/from16 v5, v73

    goto/16 :goto_26

    :catchall_12
    move-exception v0

    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move-object/from16 v92, v10

    move v1, v12

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v38, v2

    move-object v7, v11

    move v4, v13

    move-object v5, v14

    move-object/from16 v6, v92

    goto/16 :goto_26

    :cond_30
    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move-object/from16 v92, v10

    move-object/from16 v93, v11

    move v1, v12

    move/from16 v95, v13

    move-object/from16 v96, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    :goto_23
    move/from16 v4, v95

    if-eq v1, v4, :cond_32

    add-int/lit8 v12, v1, -0x1

    move-object/from16 v5, v96

    :try_start_1d
    invoke-interface {v5, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_13

    const/16 v6, 0xa

    if-ne v0, v6, :cond_31

    goto :goto_24

    :cond_31
    move-object/from16 v6, v92

    move-object/from16 v7, v93

    goto/16 :goto_25

    :catchall_13
    move-exception v0

    move-object/from16 v38, v2

    move-object/from16 v6, v92

    move-object/from16 v7, v93

    goto/16 :goto_26

    :cond_32
    move-object/from16 v5, v96

    :goto_24
    :try_start_1e
    iget v0, v8, Landroid/text/StaticLayout;->mLineCount:I

    iget v6, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_16

    if-ge v0, v6, :cond_33

    nop

    move-object/from16 v6, v92

    const/4 v0, 0x0

    :try_start_1f
    invoke-static {v5, v1, v1, v6, v0}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v33
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_15

    move-object/from16 v7, v93

    :try_start_20
    invoke-virtual {v7, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v11, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v12, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v13, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v43, 0x0

    const/16 v45, 0x0

    move-object/from16 v17, v8

    move-object/from16 v18, v5

    move/from16 v19, v1

    move/from16 v20, v1

    move/from16 v21, v0

    move/from16 v22, v11

    move/from16 v23, v12

    move/from16 v24, v13

    move/from16 v25, v75

    move/from16 v26, v48

    move/from16 v27, v49

    move-object/from16 v30, v3

    move/from16 v32, v16

    move/from16 v34, v1

    move/from16 v35, p2

    move/from16 v36, p3

    move/from16 v37, v50

    move/from16 v40, v4

    move-object/from16 v41, v55

    move/from16 v42, v57

    move-object/from16 v44, v7

    invoke-direct/range {v17 .. v45}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZLandroid/text/MeasuredParagraph;IZZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_14

    move/from16 v75, v0

    goto :goto_25

    :catchall_14
    move-exception v0

    move-object/from16 v38, v2

    goto :goto_26

    :catchall_15
    move-exception v0

    move-object/from16 v7, v93

    move-object/from16 v38, v2

    goto :goto_26

    :cond_33
    move-object/from16 v6, v92

    move-object/from16 v7, v93

    :goto_25
    invoke-static {v9, v10}, Landroid/text/StaticLayout;->nFinish(J)V

    nop

    return-void

    :catchall_16
    move-exception v0

    move-object/from16 v6, v92

    move-object/from16 v7, v93

    move-object/from16 v38, v2

    goto :goto_26

    :catchall_17
    move-exception v0

    move/from16 v75, v3

    move-object/from16 v53, v7

    move-object/from16 v56, v8

    move-object/from16 v58, v9

    move-object v6, v10

    move-object v7, v11

    move v1, v12

    move v4, v13

    move-object v5, v14

    move-object v8, v15

    move-wide/from16 v9, v63

    move/from16 v57, v66

    move-object/from16 v3, v67

    move-object/from16 v55, v68

    move-object/from16 v67, v69

    move-object/from16 v38, v2

    :goto_26
    invoke-static {v9, v10}, Landroid/text/StaticLayout;->nFinish(J)V

    throw v0
.end method

.method public getBottomPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight(Z)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v1, v0, :cond_0

    const-string v1, "StaticLayout"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "StaticLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " lineCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq v1, v0, :cond_1

    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHyphen(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 4

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    neg-int v0, v0

    return v0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    :cond_4
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled alignment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public getLineCount()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getLineExtra(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getLineForVertical(I)I
    .locals 6

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    :goto_0
    sub-int v3, v0, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v0, v1

    shr-int/2addr v3, v4

    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v2, v5

    if-le v4, p1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 v3, 0x0

    return v3

    :cond_2
    return v1
.end method

.method public getLineStart(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
