.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static final CARRIAGE_RETURN:I = 0xd

.field private static final LINE_FEED:I = 0xa

.field static final OLD_SEL_START:Ljava/lang/Object;

.field static sCachedPaint:Landroid/graphics/Paint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I
    .locals 5

    instance-of v0, p0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    return p1

    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    move-object v3, p0

    check-cast v3, Landroid/text/Spanned;

    aget-object v4, v0, v1

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ge v2, p1, :cond_2

    if-le v3, p1, :cond_2

    if-eqz p2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    move p1, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .locals 8

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0x70f4

    invoke-static {v0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-static {p2, v2, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v3

    if-ne v3, v2, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    const/4 v4, 0x2

    invoke-static {p2, v4, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v4

    if-ne v4, v2, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    if-eqz v0, :cond_7

    if-nez v4, :cond_6

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v1

    return v1

    :cond_6
    :goto_3
    return v1

    :cond_7
    if-eqz v4, :cond_8

    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v5

    if-eqz v5, :cond_8

    return v2

    :cond_8
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-eqz p5, :cond_b

    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_9

    move-object v6, p1

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    goto :goto_4

    :cond_9
    iget-object v6, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    sget-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    if-nez v7, :cond_a

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    sput-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    :cond_a
    sget-object v7, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v7

    :goto_4
    invoke-static {p2, v5, v6}, Landroid/text/method/BaseKeyListener;->getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    move-result v6

    goto :goto_5

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_b
    invoke-static {p2, v5}, Landroid/text/method/BaseKeyListener;->getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I

    move-result v6

    :goto_5
    if-eq v5, v6, :cond_c

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p2, v1, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return v2

    :cond_c
    return v1
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 5

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-interface {p2, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .locals 3

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-ge v1, v0, :cond_0

    move v2, v1

    move v1, v0

    move v0, v2

    :cond_0
    if-eq v0, v1, :cond_1

    invoke-interface {p2, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .locals 5

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    if-nez p3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p3, :cond_3

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v1

    if-ne v0, v1, :cond_3

    :cond_2
    return v2

    :cond_3
    const/4 v1, 0x0

    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    move-object v3, p1

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v1

    :cond_4
    if-nez v1, :cond_5

    new-instance v3, Landroid/text/method/WordIterator;

    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    move-object v1, v3

    :cond_5
    const/4 v3, -0x1

    if-eqz p3, :cond_6

    move v2, v0

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v1, p2, v2, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->following(I)I

    move-result v4

    if-ne v4, v3, :cond_7

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    goto :goto_0

    :cond_6
    move v4, v0

    invoke-virtual {v1, p2, v2, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v2

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    :cond_7
    :goto_0
    invoke-interface {p2, v2, v4}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v3, 0x1

    return v3
.end method

.method private static getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/16 v11, 0x8

    const/16 v12, 0x9

    const/16 v13, 0xa

    const/16 v14, 0xb

    const/16 v15, 0xc

    const/16 v16, 0xd

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v2, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v1

    :goto_0
    move/from16 v21, v17

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v3, v21

    invoke-static {v0, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v17

    sub-int v17, v3, v17

    packed-switch v2, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is unknown"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    invoke-static {v4}, Landroid/text/Emoji;->isTagSpecChar(I)Z

    move-result v21

    if-eqz v21, :cond_1

    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_4

    :cond_1
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v21

    if-eqz v21, :cond_2

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v21

    add-int v18, v18, v21

    const/16 v2, 0xd

    goto/16 :goto_4

    :cond_2
    const/16 v18, 0x2

    const/16 v2, 0xd

    goto/16 :goto_4

    :pswitch_1
    invoke-static {v4}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v21

    if-eqz v21, :cond_3

    add-int/lit8 v18, v18, -0x2

    const/16 v2, 0xa

    goto/16 :goto_4

    :cond_3
    const/16 v2, 0xd

    goto/16 :goto_4

    :pswitch_2
    invoke-static {v4}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v21

    if-eqz v21, :cond_4

    add-int/lit8 v18, v18, 0x2

    const/16 v2, 0xb

    goto/16 :goto_4

    :cond_4
    const/16 v2, 0xd

    goto/16 :goto_4

    :pswitch_3
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v21

    if-eqz v21, :cond_5

    add-int/lit8 v21, v19, 0x1

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v24

    add-int v21, v21, v24

    add-int v18, v18, v21

    const/16 v19, 0x0

    const/4 v2, 0x7

    goto/16 :goto_4

    :cond_5
    const/16 v2, 0xd

    goto/16 :goto_4

    :pswitch_4
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v21

    const/16 v20, 0x1

    add-int/lit8 v21, v21, 0x1

    add-int v18, v18, v21

    invoke-static {v4}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v21, 0x4

    goto :goto_1

    :cond_6
    const/16 v21, 0x7

    :goto_1
    move/from16 v2, v21

    goto/16 :goto_4

    :cond_7
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v19

    const/16 v2, 0x9

    goto/16 :goto_4

    :cond_8
    const/16 v2, 0xd

    goto/16 :goto_4

    :pswitch_5
    sget v3, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    if-ne v4, v3, :cond_9

    const/16 v2, 0x8

    goto/16 :goto_4

    :cond_9
    const/16 v2, 0xd

    goto/16 :goto_4

    :pswitch_6
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v18, v18, v3

    const/4 v2, 0x7

    goto/16 :goto_4

    :cond_a
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v4}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v3

    if-nez v3, :cond_b

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v18, v18, v3

    :cond_b
    const/16 v2, 0xd

    goto/16 :goto_4

    :pswitch_7
    invoke-static {v4}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v3, v19, v3

    add-int v18, v18, v3

    :cond_c
    const/16 v2, 0xd

    goto/16 :goto_4

    :pswitch_8
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    const/4 v2, 0x5

    goto :goto_2

    :cond_d
    invoke-static {v4}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v18, v18, v3

    :cond_e
    const/16 v2, 0xd

    goto/16 :goto_4

    :pswitch_9
    invoke-static {v4}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v3, v19, v3

    add-int v18, v18, v3

    :cond_f
    const/16 v2, 0xd

    goto/16 :goto_4

    :pswitch_a
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    const/4 v2, 0x3

    nop

    :goto_2
    move/from16 v19, v3

    goto :goto_4

    :cond_10
    invoke-static {v4}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int v18, v18, v3

    :cond_11
    const/16 v2, 0xd

    goto :goto_4

    :pswitch_b
    const/16 v3, 0xd

    if-ne v4, v3, :cond_12

    add-int/lit8 v18, v18, 0x1

    :cond_12
    const/16 v2, 0xd

    goto :goto_4

    :pswitch_c
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    move/from16 v25, v3

    const/16 v3, 0xa

    if-ne v4, v3, :cond_13

    const/4 v2, 0x1

    :goto_3
    move/from16 v18, v25

    goto :goto_4

    :cond_13
    invoke-static {v4}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v2, 0x6

    goto :goto_3

    :cond_14
    invoke-static {v4}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v3

    if-eqz v3, :cond_15

    const/16 v2, 0xa

    goto :goto_3

    :cond_15
    invoke-static {v4}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v2, 0x4

    goto :goto_3

    :cond_16
    sget v3, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    if-ne v4, v3, :cond_17

    const/4 v2, 0x2

    goto :goto_3

    :cond_17
    invoke-static {v4}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v2, 0x7

    goto :goto_3

    :cond_18
    sget v3, Landroid/text/Emoji;->CANCEL_TAG:I

    if-ne v4, v3, :cond_19

    const/16 v2, 0xc

    goto :goto_3

    :cond_19
    const/16 v2, 0xd

    goto :goto_3

    :goto_4
    if-lez v17, :cond_1b

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1a

    goto :goto_5

    :cond_1a
    move/from16 v3, v22

    move/from16 v4, v23

    goto/16 :goto_0

    :cond_1b
    :goto_5
    sub-int v3, v1, v18

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v3

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method private static getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .locals 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    if-lt p1, v0, :cond_0

    return v7

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    move v3, v7

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static isVariationSelector(I)Z
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Landroid/text/method/BaseKeyListener$1;->$SwitchMap$android$text$method$TextKeyListener$Capitalize:[I

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    or-int/lit16 v0, v0, 0x4000

    goto :goto_0

    :pswitch_1
    or-int/lit16 v0, v0, 0x2000

    goto :goto_0

    :pswitch_2
    or-int/lit16 v0, v0, 0x1000

    nop

    :goto_0
    if-eqz p1, :cond_0

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x43

    if-eq p3, v0, :cond_1

    const/16 v0, 0x70

    if-eq p3, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    nop

    :goto_0
    nop

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    if-ge v2, v0, :cond_1

    move v3, v2

    move v2, v0

    move v0, v3

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-interface {p2, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v1, 0x1

    return v1

    :cond_3
    :goto_0
    return v1
.end method
