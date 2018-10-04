.class public Lcom/google/android/util/SmileyParser;
.super Lcom/google/android/util/AbstractMessageParser;
.source "SmileyParser.java"


# instance fields
.field private mRes:Lcom/google/android/util/SmileyResources;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/util/SmileyResources;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/util/AbstractMessageParser;-><init>(Ljava/lang/String;ZZZZZZ)V

    iput-object p2, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    return-void
.end method


# virtual methods
.method protected getResources()Lcom/google/android/util/AbstractMessageParser$Resources;
    .locals 1

    iget-object v0, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    return-object v0
.end method

.method public getSpannableString(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 11

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/util/SmileyParser;->getPartCount()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/util/SmileyParser;->getPart(I)Lcom/google/android/util/AbstractMessageParser$Part;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/util/AbstractMessageParser$Part;->getTokens()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    nop

    :goto_0
    if-ge v1, v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/util/AbstractMessageParser$Token;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v7

    sget-object v8, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/google/android/util/SmileyParser;->mRes:Lcom/google/android/util/SmileyResources;

    invoke-virtual {v5}, Lcom/google/android/util/AbstractMessageParser$Token;->getRawText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/util/SmileyResources;->getSmileyRes(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    new-instance v8, Landroid/text/style/ImageSpan;

    invoke-direct {v8, p1, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v0, v8, v6, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
