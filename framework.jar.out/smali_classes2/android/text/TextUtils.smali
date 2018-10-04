.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ACCESSIBILITY_CLICKABLE_SPAN:I = 0x19

.field public static final ACCESSIBILITY_URL_SPAN:I = 0x1a

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final EASY_EDIT_SPAN:I = 0x16

.field static final ELLIPSIS_FILLER:C = '\ufeff'

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final LAST_SPAN:I = 0x1a

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LOCALE_SPAN:I = 0x17

.field private static final PARCEL_SAFE_TEXT_LENGTH:I = 0x186a0

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TextUtils"

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TTS_SPAN:I = 0x18

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .locals 25
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v7, p0

    const/4 v8, 0x0

    const/4 v0, 0x0

    move-object v9, v0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move-object v2, v7

    move v4, v0

    move-object/from16 v5, p5

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v1

    move-object v8, v1

    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    cmpg-float v2, v1, p2

    if-gtz v2, :cond_2

    nop

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_0
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_1
    return-object v7

    :cond_2
    :try_start_1
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v2

    const/4 v3, 0x0

    move v5, v3

    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0x2c

    if-ge v3, v0, :cond_4

    aget-char v10, v2, v3

    if-ne v10, v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v5, 0x1

    const/4 v10, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getWidths()Landroid/text/AutoGrowArray$FloatArray;

    move-result-object v14

    invoke-virtual {v14}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v21, v9

    move v9, v3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_8

    int-to-float v4, v12

    :try_start_2
    aget v15, v14, v3

    add-float/2addr v4, v15

    float-to-int v12, v4

    aget-char v4, v2, v3

    if-ne v4, v6, :cond_7

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, -0x1

    const/4 v4, 0x1

    if-ne v9, v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v6, p3

    :try_start_3
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v22, v0

    move/from16 v23, v1

    move-object/from16 v1, p4

    goto :goto_2

    :cond_5
    move-object/from16 v6, p3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v0

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v0, v16

    move/from16 v23, v1

    move-object/from16 v1, p4

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v0, v4

    const/16 v17, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v15, p1

    move-object/from16 v16, v0

    move-object/from16 v19, p5

    move-object/from16 v20, v21

    invoke-static/range {v15 .. v20}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v4}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-float v1, v12

    add-float/2addr v1, v15

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_6

    add-int/lit8 v1, v3, 0x1

    nop

    move-object v11, v0

    move v10, v1

    :cond_6
    move-object/from16 v21, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v9, v4

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_7
    move-object/from16 v6, p3

    move/from16 v22, v0

    move/from16 v23, v1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    const/16 v6, 0x2c

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v6, p3

    :goto_4
    move-object/from16 v9, v21

    goto :goto_5

    :cond_8
    move-object/from16 v6, p3

    move/from16 v22, v0

    move/from16 v23, v1

    :try_start_5
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7, v1, v10}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    nop

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_9
    move-object/from16 v1, v21

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_a
    return-object v0

    :catchall_3
    move-exception v0

    move-object/from16 v1, v21

    move-object v9, v1

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v6, p3

    :goto_5
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_c
    throw v0
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    array-length v0, p0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    aget-object v0, p0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    instance-of v5, v4, Landroid/text/Spanned;

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v0, :cond_6

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    array-length v3, p0

    :goto_2
    if-ge v1, v3, :cond_5

    aget-object v4, p0, v1

    if-nez v4, :cond_4

    const-string/jumbo v5, "null"

    goto :goto_3

    :cond_4
    move-object v5, v4

    :goto_3
    invoke-virtual {v2, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    new-instance v1, Landroid/text/SpannedString;

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, p0

    :goto_4
    if-ge v1, v3, :cond_7

    aget-object v4, p0, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .locals 8

    if-nez p3, :cond_0

    const-class p3, Ljava/lang/Object;

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v3, v0, v1

    invoke-interface {p0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    aget-object v4, v0, v1

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    if-ge v2, p1, :cond_1

    move v2, p1

    :cond_1
    if-le v3, p2, :cond_2

    move v3, p2

    :cond_2
    aget-object v5, v0, v1

    sub-int v6, v2, p1

    add-int/2addr v6, p5

    sub-int v7, v3, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method static couldAffectRtl(C)Z
    .locals 1

    const/16 v0, 0x590

    if-gt v0, p0, :cond_0

    const/16 v0, 0x8ff

    if-le p0, v0, :cond_6

    :cond_0
    const/16 v0, 0x200e

    if-eq p0, v0, :cond_6

    const/16 v0, 0x200f

    if-eq p0, v0, :cond_6

    const/16 v0, 0x202a

    if-gt v0, p0, :cond_1

    const/16 v0, 0x202e

    if-le p0, v0, :cond_6

    :cond_1
    const/16 v0, 0x2066

    if-gt v0, p0, :cond_2

    const/16 v0, 0x2069

    if-le p0, v0, :cond_6

    :cond_2
    const v0, 0xd800

    if-gt v0, p0, :cond_3

    const v0, 0xdfff

    if-le p0, v0, :cond_6

    :cond_3
    const v0, 0xfb1d

    if-gt v0, p0, :cond_4

    const v0, 0xfdff

    if-le p0, v0, :cond_6

    :cond_4
    const v0, 0xfe70

    if-gt v0, p0, :cond_5

    const v0, 0xfefe

    if-gt p0, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    if-lez v0, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    const/4 v4, 0x1

    if-ne v3, v2, :cond_2

    return v4

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    return v4

    :cond_3
    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v1
.end method

.method static doesNotNeedBidi([CII)Z
    .locals 3

    add-int v0, p1, p2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-char v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    nop

    :goto_0
    move v2, v3

    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": (no spans)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .locals 8

    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p3}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p7

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const/4 v0, 0x0

    move-object v6, v0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v1, p1

    move-object v2, v7

    move-object/from16 v5, p6

    invoke-static/range {v1 .. v6}, Landroid/text/MeasuredParagraph;->buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v13, v1

    :try_start_1
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->getWholeWidth()F

    move-result v1

    move v14, v1

    cmpg-float v1, v14, p2

    const/4 v2, 0x0

    if-gtz v1, :cond_2

    if-eqz v10, :cond_0

    invoke-interface {v10, v2, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :cond_0
    nop

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_1
    return-object v7

    :cond_2
    move-object/from16 v15, p1

    :try_start_2
    invoke-virtual {v15, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move/from16 v16, v1

    sub-float v1, p2, v16

    const/4 v3, 0x0

    move v4, v12

    const/4 v5, 0x0

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    :goto_0
    move/from16 v17, v1

    move v8, v4

    goto :goto_2

    :cond_3
    :try_start_3
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v5, :cond_4

    invoke-virtual {v13, v12, v2, v1}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v5

    sub-int v4, v12, v5

    goto :goto_0

    :cond_4
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    const/4 v6, 0x1

    if-eq v9, v5, :cond_6

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v5, :cond_5

    goto :goto_1

    :cond_5
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v1, v5

    invoke-virtual {v13, v12, v2, v5}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v5

    sub-int v4, v12, v5

    invoke-virtual {v13, v4, v12}, Landroid/text/MeasuredParagraph;->measure(II)F

    move-result v5

    sub-float/2addr v1, v5

    invoke-virtual {v13, v4, v6, v1}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v5

    move v3, v5

    goto :goto_0

    :cond_6
    :goto_1
    invoke-virtual {v13, v12, v6, v1}, Landroid/text/MeasuredParagraph;->breakText(IZF)I

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v3, v5

    goto :goto_0

    :goto_2
    if-eqz v10, :cond_7

    :try_start_4
    invoke-interface {v10, v3, v8}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_7
    :goto_3
    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v1

    move-object v6, v1

    instance-of v1, v7, Landroid/text/Spanned;

    if-eqz v1, :cond_8

    move-object v0, v7

    check-cast v0, Landroid/text/Spanned;

    nop

    :cond_8
    sub-int v5, v8, v3

    sub-int v18, v12, v5

    if-eqz p4, :cond_e

    if-lez v18, :cond_9

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v5, v1, :cond_9

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v11, v2, v1, v6, v3}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    :cond_9
    move/from16 v19, v3

    move/from16 v1, v19

    :goto_4
    if-ge v1, v8, :cond_a

    const v3, 0xfeff

    aput-char v3, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v6, v2, v12}, Ljava/lang/String;-><init>([CII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v1

    if-nez v0, :cond_c

    nop

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_b
    return-object v4

    :cond_c
    :try_start_5
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v20, v1

    const/4 v2, 0x0

    const-class v21, Ljava/lang/Object;

    const/16 v22, 0x0

    move-object v1, v0

    move v3, v12

    move-object/from16 v23, v4

    move-object/from16 v4, v21

    move/from16 v21, v5

    move-object/from16 v5, v20

    move-object v9, v6

    move/from16 v6, v22

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    if-eqz v13, :cond_d

    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_d
    return-object v20

    :cond_e
    move/from16 v21, v5

    move-object v9, v6

    if-nez v18, :cond_10

    :try_start_6
    const-string v1, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v13, :cond_f

    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_f
    return-object v1

    :cond_10
    if-nez v0, :cond_12

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v4

    add-int v4, v18, v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v9, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v2, v12, v8

    invoke-virtual {v1, v9, v8, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v13, :cond_11

    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_11
    return-object v2

    :cond_12
    :try_start_8
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v1, v7, v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v7, v8, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    nop

    if-eqz v13, :cond_13

    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_13
    return-object v1

    :catchall_1
    move-exception v0

    move/from16 v17, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v15, p1

    :goto_5
    move/from16 v17, p2

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v17, p2

    move-object v13, v6

    :goto_6
    if-eqz v13, :cond_14

    invoke-virtual {v13}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_14
    throw v0
.end method

.method public static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v3, v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v2, v4, :cond_4

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v1
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    array-length v0, p1

    const/16 v1, 0x9

    if-gt v0, v1, :cond_5

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x5e

    if-ne v2, v3, :cond_3

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_2

    array-length v4, p1

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v1, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v0, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " provided"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "max of 9 values are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static formatSelectedCount(I)Ljava/lang/CharSequence;
    .locals 4

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x1150017

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 8

    if-gez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    and-int/lit16 v1, p2, 0x1000

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x1000

    :cond_1
    and-int/lit16 v1, p2, 0x6000

    if-nez v1, :cond_2

    return v0

    :cond_2
    move v1, p1

    :goto_0
    const/16 v2, 0x27

    const/16 v3, 0x22

    if-lez v1, :cond_4

    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v4, v3, :cond_3

    if-eq v4, v2, :cond_3

    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    :goto_1
    move v4, v1

    :goto_2
    if-lez v4, :cond_6

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    move v6, v5

    const/16 v7, 0x20

    if-eq v5, v7, :cond_5

    const/16 v5, 0x9

    if-ne v6, v5, :cond_6

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_12

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_7

    goto :goto_7

    :cond_7
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_9

    if-eq v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x2000

    :cond_8
    return v0

    :cond_9
    if-ne v1, v4, :cond_a

    return v0

    :cond_a
    :goto_3
    if-lez v4, :cond_c

    add-int/lit8 v5, v4, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_b

    if-eq v5, v2, :cond_b

    invoke-static {v5}, Ljava/lang/Character;->getType(C)I

    move-result v6

    const/16 v7, 0x16

    if-eq v6, v7, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_c
    :goto_4
    if-lez v4, :cond_11

    add-int/lit8 v2, v4, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_d

    const/16 v5, 0x3f

    if-eq v2, v5, :cond_d

    const/16 v5, 0x21

    if-ne v2, v5, :cond_11

    :cond_d
    if-ne v2, v3, :cond_10

    add-int/lit8 v5, v4, -0x2

    :goto_5
    if-ltz v5, :cond_10

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_e

    return v0

    :cond_e
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_10
    :goto_6
    or-int/lit16 v3, v0, 0x4000

    return v3

    :cond_11
    return v0

    :cond_12
    :goto_7
    or-int/lit16 v2, v0, 0x2000

    return v2
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1

    :cond_0
    const-class v1, Ljava/lang/StringBuffer;

    if-ne v0, v1, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_1

    :cond_1
    const-class v1, Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_2

    move-object v1, p0

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_1

    :cond_2
    instance-of v1, p0, Landroid/text/GetChars;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Landroid/text/GetChars;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_1

    :cond_3
    move v1, p4

    move p4, p1

    :goto_0
    if-ge p4, p2, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    add-int/lit8 p4, p4, 0x1

    move v1, v2

    goto :goto_0

    :cond_4
    move p4, v1

    :goto_1
    return-void
.end method

.method public static getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "\u2025"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "\u2026"

    :goto_0
    return-object v0
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->isRightToLeft()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "debug.force_rtl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v0
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xd800

    if-lt v1, v2, :cond_3

    const v2, 0xdbff

    if-gt v1, v2, :cond_3

    add-int/lit8 v2, p1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0xdc00

    if-lt v2, v3, :cond_2

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    add-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    :goto_0
    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    :goto_1
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_5

    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object v5, p0

    check-cast v5, Landroid/text/Spanned;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ge v4, p1, :cond_4

    if-le v5, p1, :cond_4

    move p1, v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return p1
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xdc00

    if-lt v1, v2, :cond_3

    const v2, 0xdfff

    if-gt v1, v2, :cond_3

    add-int/lit8 v2, p1, -0x2

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0xd800

    if-lt v2, v3, :cond_2

    const v3, 0xdbff

    if-gt v2, v3, :cond_2

    add-int/lit8 p1, p1, -0x2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    :goto_0
    goto :goto_1

    :cond_3
    add-int/lit8 p1, p1, -0x1

    :goto_1
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_5

    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    nop

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_5

    move-object v3, p0

    check-cast v3, Landroid/text/Spanned;

    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v0

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ge v3, p1, :cond_4

    if-le v4, p1, :cond_4

    move p1, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return p1
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_1
    if-le v3, v1, :cond_1

    add-int/lit8 v4, v3, -0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-gt v4, v2, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    sub-int v2, v3, v1

    return v2
.end method

.method public static hasStyleSpan(Landroid/text/Spanned;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Landroid/text/style/CharacterStyle;

    aput-object v3, v2, v0

    const-class v3, Landroid/text/style/ParagraphStyle;

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-class v4, Landroid/text/style/UpdateAppearance;

    aput-object v4, v2, v3

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    const/4 v6, -0x1

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v7

    invoke-interface {p0, v6, v7, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v3, "&#39;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v3, "&quot;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    instance-of v1, p0, Landroid/text/GetChars;

    const/4 v2, -0x1

    if-nez v1, :cond_3

    const-class v1, Ljava/lang/StringBuffer;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/StringBuilder;

    if-eq v0, v1, :cond_3

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    const/16 v1, 0x1f4

    const/16 v3, 0x1f4

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v3

    :goto_2
    if-ge p2, p3, :cond_7

    add-int/lit16 v4, p2, 0x1f4

    if-le v4, p3, :cond_4

    move v4, p3

    :cond_4
    const/4 v5, 0x0

    invoke-static {p0, p2, v4, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v6, v4, p2

    nop

    :goto_3
    if-ge v5, v6, :cond_6

    aget-char v7, v3, v5

    if-ne v7, p1, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    add-int v2, v5, p2

    return v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    move p2, v4

    goto :goto_2

    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->recycle([C)V

    return v2
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    :goto_0
    invoke-static {p0, v2, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    sub-int v3, p3, v0

    const/4 v4, -0x1

    if-le p2, v3, :cond_1

    nop

    return v4

    :cond_1
    if-gez p2, :cond_2

    return v4

    :cond_2
    invoke-static {p0, p2, p1, v1, v0}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

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

.method public static isGraphic(C)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(I)I

    move-result v4

    const/16 v5, 0xf

    if-eq v4, v5, :cond_0

    const/16 v5, 0x10

    if-eq v4, v5, :cond_0

    const/16 v5, 0x13

    if-eq v4, v5, :cond_0

    if-eqz v4, :cond_0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    const/16 v5, 0xe

    if-eq v4, v5, :cond_0

    const/16 v5, 0xc

    if-eq v4, v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isPrintableAscii(C)Z
    .locals 3

    const/16 v0, 0x20

    const/16 v1, 0x7e

    const/16 v2, 0x20

    if-gt v2, p0, :cond_0

    const/16 v2, 0x7e

    if-le p0, v2, :cond_2

    :cond_0
    const/16 v2, 0xd

    if-eq p0, v2, :cond_2

    const/16 v2, 0xa

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    array-length v0, p1

    if-nez v0, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .locals 9

    const/4 v0, -0x1

    if-gez p3, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt p3, v1, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 p3, v1, -0x1

    :cond_1
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    instance-of v3, p0, Landroid/text/GetChars;

    if-nez v3, :cond_5

    const-class v3, Ljava/lang/StringBuffer;

    if-eq v2, v3, :cond_5

    const-class v3, Ljava/lang/StringBuilder;

    if-eq v2, v3, :cond_5

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-lt v3, p2, :cond_4

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_3

    return v3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_1
    const/16 v3, 0x1f4

    const/16 v4, 0x1f4

    invoke-static {v4}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v4

    :goto_2
    if-ge p2, v1, :cond_9

    add-int/lit16 v5, v1, -0x1f4

    if-ge v5, p2, :cond_6

    move v5, p2

    :cond_6
    const/4 v6, 0x0

    invoke-static {p0, v5, v1, v4, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v6, v1, v5

    add-int/lit8 v7, v6, -0x1

    :goto_3
    if-ltz v7, :cond_8

    aget-char v8, v4, v7

    if-ne v8, p1, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->recycle([C)V

    add-int v0, v7, v5

    return v0

    :cond_7
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_8
    move v1, v5

    goto :goto_2

    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->recycle([C)V

    return v0
.end method

.method public static length(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static listEllipsize(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/text/TextPaint;FI)Ljava/lang/CharSequence;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            "FI)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v1, ""

    return-object v1

    :cond_1
    const/4 v1, 0x0

    if-nez p0, :cond_2

    const/4 v2, 0x0

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v3

    :goto_0
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-array v5, v0, [I

    move v6, v1

    :goto_1
    if-ge v6, v0, :cond_4

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v0, -0x1

    if-eq v6, v7, :cond_3

    invoke-virtual {v4, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_3
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v0, -0x1

    :goto_2
    if-ltz v6, :cond_8

    aget v7, v5, v6

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    sub-int v7, v0, v6

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-lez v7, :cond_6

    if-nez v2, :cond_5

    const-string/jumbo v8, "\u2026"

    goto :goto_3

    :cond_5
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-virtual {v2, p5, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v3, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {p3, v4, v1, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v8

    cmpg-float v9, v8, p4

    if-gtz v9, :cond_7

    return-object v4

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_8
    const-string v1, ""

    return-object v1
.end method

.method public static nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static obtain(I)[C
    .locals 3

    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/text/TextUtils;->sTemp:[C

    const/4 v2, 0x0

    sput-object v2, Landroid/text/TextUtils;->sTemp:[C

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    array-length v0, v1

    if-ge v0, p0, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v1

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static packRangeInLong(II)J
    .locals 4

    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method static recycle([C)V
    .locals 2

    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6

    const/4 v0, 0x2

    mul-int/2addr v0, p4

    if-lt v0, p4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    add-int v2, p1, p4

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    add-int v2, p3, p4

    invoke-static {p2, p3, v2, v1, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v2, 0x1

    nop

    :goto_0
    if-ge v3, p4, :cond_1

    aget-char v4, v1, v3

    add-int v5, v3, p4

    aget-char v5, v1, v5

    if-eq v4, v5, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    return v2

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v2

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    aget-object v4, p0, v0

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    if-ne v5, v6, :cond_0

    if-nez v1, :cond_1

    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    move-object v1, v7

    check-cast v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v0

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_3
    return-object p0
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    aget-object v3, p1, v2

    invoke-static {v0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    if-ltz v3, :cond_0

    aget-object v4, p1, v2

    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    const/16 v6, 0x21

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v3, p1, v1

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ltz v2, :cond_2

    aget-object v4, p2, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static safeIntern(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p0, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p0, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    sub-int v0, p2, p1

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    new-instance v2, Ljava/lang/String;

    sub-int v3, p2, p1

    invoke-direct {v2, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    move-object v1, v2

    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    return-object v1
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/icu/text/Edits;

    invoke-direct {v2}, Landroid/icu/text/Edits;-><init>()V

    if-nez p2, :cond_1

    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    return-object v4

    :cond_1
    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v3

    check-cast v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v4

    if-nez v4, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v2}, Landroid/icu/text/Edits;->getFineIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v6, v1

    check-cast v6, Landroid/text/Spanned;

    const-class v7, Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v6, v8, v5, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    array-length v9, v7

    :goto_1
    if-ge v8, v9, :cond_5

    aget-object v10, v7, v8

    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v6, v10}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v13

    if-ne v11, v5, :cond_3

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v14

    goto :goto_2

    :cond_3
    invoke-static {v4, v11}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v14

    :goto_2
    if-ne v12, v5, :cond_4

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    goto :goto_3

    :cond_4
    invoke-static {v4, v12}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v15

    :goto_3
    move/from16 v16, v15

    move/from16 v0, v16

    invoke-virtual {v3, v10, v14, v0, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_5
    return-object v3
.end method

.method private static toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/icu/text/Edits$Iterator;->findSourceIndex(I)Z

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v1

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static trimToParcelableSize(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;)TT;"
        }
    .end annotation

    const v0, 0x186a0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/CharSequence;",
            ">(TT;I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v1, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, p1, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    :cond_2
    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static unpackRangeEndFromLong(J)I
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static unpackRangeStartFromLong(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static wrap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 12

    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move v4, v0

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_4

    aget-object v5, v3, v4

    aget-object v6, v3, v4

    instance-of v7, v6, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Landroid/text/style/CharacterStyle;

    invoke-virtual {v7}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v6

    :cond_0
    instance-of v7, v6, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/text/ParcelableSpan;

    invoke-interface {v7}, Landroid/text/ParcelableSpan;->getSpanTypeIdInternal()I

    move-result v8

    if-lt v8, v1, :cond_2

    const/16 v9, 0x1a

    if-le v8, v9, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v7, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    invoke-static {p1, v2, v5}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v9, "TextUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "External class \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\" is attempting to use the frameworks-only ParcelableSpan interface"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p0, :cond_6

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
