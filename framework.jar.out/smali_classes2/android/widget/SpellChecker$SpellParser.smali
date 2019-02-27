.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private mRange:Ljava/lang/Object;

.field final synthetic this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor <init>(Landroid/widget/SpellChecker;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method private removeRangeSpan(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method private removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p3, v1

    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    if-le v3, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ge v4, p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setRangeSpan(Landroid/text/Editable;II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    const/16 v1, 0x21

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .locals 2

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parse()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v1}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2}, Landroid/widget/SpellChecker;->access$400(Landroid/widget/SpellChecker;)Z

    move-result v2

    const/16 v3, 0x32

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    iget-object v5, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v1, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    add-int/lit16 v6, v2, 0x15e

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v7}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    iget-object v7, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v7}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/text/method/WordIterator;->following(I)I

    move-result v9

    if-eq v9, v8, :cond_2

    iget-object v10, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v10}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v7

    goto :goto_1

    :cond_1
    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v9

    :cond_2
    :goto_1
    if-ne v9, v8, :cond_3

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    return-void

    :cond_3
    add-int/lit8 v10, v2, -0x1

    add-int/lit8 v11, v5, 0x1

    const-class v12, Landroid/text/style/SpellCheckSpan;

    invoke-interface {v1, v10, v11, v12}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/SpellCheckSpan;

    add-int/lit8 v11, v2, -0x1

    add-int/lit8 v12, v5, 0x1

    const-class v13, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v11, v12, v13}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/SuggestionSpan;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v14}, Landroid/widget/SpellChecker;->access$400(Landroid/widget/SpellChecker;)Z

    move-result v14

    if-eqz v14, :cond_12

    if-ge v6, v5, :cond_4

    const/4 v13, 0x1

    :cond_4
    iget-object v3, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v3}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v3

    const/4 v14, 0x1

    if-eq v3, v8, :cond_5

    move v15, v14

    goto :goto_2

    :cond_5
    move v15, v4

    :goto_2
    if-eqz v15, :cond_7

    iget-object v4, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v4}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v3

    if-eq v3, v8, :cond_6

    goto :goto_3

    :cond_6
    const/4 v14, 0x0

    :goto_3
    move v15, v14

    :cond_7
    if-nez v15, :cond_8

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    return-void

    :cond_8
    move v4, v7

    const/4 v14, 0x1

    const/16 v16, 0x0

    :goto_4
    move/from16 v17, v16

    iget-object v8, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v8}, Landroid/widget/SpellChecker;->access$600(Landroid/widget/SpellChecker;)I

    move-result v8

    move/from16 v18, v6

    move/from16 v6, v17

    if-ge v6, v8, :cond_e

    iget-object v8, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v8}, Landroid/widget/SpellChecker;->access$700(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;

    move-result-object v8

    aget-object v8, v8, v6

    move/from16 v19, v7

    iget-object v7, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v7}, Landroid/widget/SpellChecker;->access$800(Landroid/widget/SpellChecker;)[I

    move-result-object v7

    aget v7, v7, v6

    if-ltz v7, :cond_c

    invoke-virtual {v8}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v7

    if-eqz v7, :cond_9

    nop

    move/from16 v20, v9

    goto :goto_5

    :cond_9
    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    move/from16 v20, v9

    invoke-interface {v1, v8}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    if-lt v9, v4, :cond_d

    if-ge v3, v7, :cond_a

    goto :goto_5

    :cond_a
    if-gt v7, v4, :cond_b

    if-gt v3, v9, :cond_b

    const/4 v14, 0x0

    goto :goto_6

    :cond_b
    invoke-interface {v1, v8}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {v7, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_5

    :cond_c
    move/from16 v20, v9

    :cond_d
    :goto_5
    add-int/lit8 v16, v6, 0x1

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v9, v20

    const/4 v8, -0x1

    goto :goto_4

    :cond_e
    move/from16 v19, v7

    move/from16 v20, v9

    :goto_6
    if-ge v3, v2, :cond_f

    goto :goto_7

    :cond_f
    if-gt v3, v4, :cond_10

    invoke-static {}, Landroid/widget/SpellChecker;->access$300()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Trying to spellcheck invalid region, from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_10
    if-eqz v14, :cond_11

    iget-object v6, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v6, v1, v4, v3}, Landroid/widget/SpellChecker;->access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    :cond_11
    :goto_7
    nop

    nop

    move v4, v3

    move/from16 v6, v18

    move/from16 v9, v20

    goto/16 :goto_d

    :cond_12
    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v9

    move/from16 v4, v19

    :goto_8
    if-gt v4, v5, :cond_20

    if-lt v9, v2, :cond_1b

    if-le v9, v4, :cond_1b

    if-lt v12, v3, :cond_13

    const/4 v13, 0x1

    goto/16 :goto_d

    :cond_13
    if-ge v4, v2, :cond_14

    if-le v9, v2, :cond_14

    invoke-direct {v0, v1, v2, v10}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v11}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    :cond_14
    if-ge v4, v5, :cond_15

    if-le v9, v5, :cond_15

    invoke-direct {v0, v1, v5, v10}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    invoke-direct {v0, v1, v5, v11}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    :cond_15
    const/4 v7, 0x1

    if-ne v9, v2, :cond_17

    const/4 v8, 0x0

    :goto_9
    array-length v14, v10

    if-ge v8, v14, :cond_17

    aget-object v14, v10, v8

    invoke-interface {v1, v14}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    if-ne v14, v2, :cond_16

    const/4 v7, 0x0

    goto :goto_a

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_17
    :goto_a
    if-ne v4, v5, :cond_19

    const/4 v8, 0x0

    :goto_b
    array-length v14, v10

    if-ge v8, v14, :cond_19

    aget-object v14, v10, v8

    invoke-interface {v1, v14}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v14

    if-ne v14, v5, :cond_18

    const/4 v7, 0x0

    goto :goto_c

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_19
    :goto_c
    if-eqz v7, :cond_1a

    iget-object v8, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v8, v1, v4, v9}, Landroid/widget/SpellChecker;->access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    :cond_1a
    add-int/lit8 v12, v12, 0x1

    :cond_1b
    move v7, v9

    iget-object v8, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v8}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/text/method/WordIterator;->following(I)I

    move-result v8

    if-ge v6, v5, :cond_1d

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1c

    if-lt v8, v6, :cond_1d

    :cond_1c
    add-int/lit16 v9, v7, 0x15e

    invoke-static {v5, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v1, v7, v6}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    iget-object v9, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v9}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/text/method/WordIterator;->following(I)I

    move-result v8

    :cond_1d
    move v9, v8

    const/4 v8, -0x1

    if-ne v9, v8, :cond_1e

    goto :goto_e

    :cond_1e
    iget-object v14, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v14}, Landroid/widget/SpellChecker;->access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v4

    if-ne v4, v8, :cond_1f

    goto :goto_e

    :cond_1f
    goto/16 :goto_8

    :cond_20
    :goto_d
    const/4 v8, -0x1

    :goto_e
    if-eqz v13, :cond_21

    if-eq v4, v8, :cond_21

    if-gt v4, v5, :cond_21

    invoke-direct {v0, v1, v4, v5}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    goto :goto_f

    :cond_21
    invoke-direct {v0, v1}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    :goto_f
    iget-object v3, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v3}, Landroid/widget/SpellChecker;->access$1000(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method public parse(II)V
    .locals 4

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-le p2, v0, :cond_0

    invoke-static {}, Landroid/widget/SpellChecker;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse invalid region, from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    if-le v1, p1, :cond_1

    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    invoke-direct {p0, v2, p1, v1}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    return-void
.end method
