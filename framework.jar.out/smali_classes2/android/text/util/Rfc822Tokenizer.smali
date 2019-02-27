.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_0
    const/16 v2, 0x20

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :goto_2
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_0
    const/4 v5, 0x0

    if-ge v3, v4, :cond_14

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x2c

    const/16 v8, 0x20

    const/4 v9, 0x0

    if-eq v6, v7, :cond_f

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v5, 0x5c

    const/16 v7, 0x22

    if-ne v6, v7, :cond_4

    add-int/lit8 v3, v3, 0x1

    :goto_1
    if-ge v3, v4, :cond_13

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_1
    if-ne v6, v5, :cond_3

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_2

    add-int/lit8 v8, v3, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/16 v7, 0x28

    if-ne v6, v7, :cond_b

    const/4 v8, 0x1

    add-int/lit8 v3, v3, 0x1

    :goto_2
    if-ge v3, v4, :cond_a

    if-lez v8, :cond_a

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v9, 0x29

    if-ne v6, v9, :cond_6

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    if-ne v6, v7, :cond_7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-ne v6, v5, :cond_9

    add-int/lit8 v9, v3, 0x1

    if-ge v9, v4, :cond_8

    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    :cond_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    goto/16 :goto_7

    :cond_b
    const/16 v5, 0x3c

    if-ne v6, v5, :cond_d

    add-int/lit8 v3, v3, 0x1

    :goto_3
    if-ge v3, v4, :cond_13

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v5, 0x3e

    if-ne v6, v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_d
    if-ne v6, v8, :cond_e

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_f
    :goto_4
    add-int/lit8 v3, v3, 0x1

    :goto_5
    if-ge v3, v4, :cond_10

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_10

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_10
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_11

    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v7, v8, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_12

    new-instance v7, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v5, v8, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_6
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_13
    :goto_7
    goto/16 :goto_0

    :cond_14
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_15

    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_16

    new-instance v6, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v7, v8}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_8
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/util/Rfc822Token;

    return-object v1
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_d

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_c

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v3, 0x5c

    const/16 v4, 0x22

    if-ne v2, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v1, v0, :cond_b

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1
    if-ne v2, v3, :cond_2

    add-int/lit8 v5, v1, 0x1

    if-ge v5, v0, :cond_2

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/16 v4, 0x28

    if-ne v2, v4, :cond_8

    const/4 v5, 0x1

    add-int/lit8 v1, v1, 0x1

    :goto_2
    if-ge v1, v0, :cond_7

    if-lez v5, :cond_7

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v6, 0x29

    if-ne v2, v6, :cond_4

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    if-ne v2, v4, :cond_5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-ne v2, v3, :cond_6

    add-int/lit8 v6, v1, 0x1

    if-ge v6, v0, :cond_6

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    goto :goto_4

    :cond_8
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_a

    add-int/lit8 v1, v1, 0x1

    :goto_3
    if-ge v1, v0, :cond_b

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v1, v1, 0x1

    :cond_b
    :goto_4
    goto :goto_0

    :cond_c
    :goto_5
    return v1

    :cond_d
    return v1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    invoke-virtual {p0, p1, v1}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ge v1, p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v1, p2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-ge v1, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
