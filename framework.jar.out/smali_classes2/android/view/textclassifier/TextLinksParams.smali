.class public final Landroid/view/textclassifier/TextLinksParams;
.super Ljava/lang/Object;
.source "TextLinksParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLinksParams$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_SPAN_FACTORY:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mApplyStrategy:I

.field private final mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private final mSpanFactory:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/view/textclassifier/-$$Lambda$TextLinksParams$km8pN8nazHT6NQiHykIrRALWbkE;->INSTANCE:Landroid/view/textclassifier/-$$Lambda$TextLinksParams$km8pN8nazHT6NQiHykIrRALWbkE;

    sput-object v0, Landroid/view/textclassifier/TextLinksParams;->DEFAULT_SPAN_FACTORY:Ljava/util/function/Function;

    return-void
.end method

.method private constructor <init>(ILjava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/textclassifier/TextLinksParams;->mApplyStrategy:I

    iput-object p2, p0, Landroid/view/textclassifier/TextLinksParams;->mSpanFactory:Ljava/util/function/Function;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->createWithHints(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextLinksParams;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/function/Function;Landroid/view/textclassifier/TextLinksParams$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/textclassifier/TextLinksParams;-><init>(ILjava/util/function/Function;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/function/Function;
    .locals 1

    sget-object v0, Landroid/view/textclassifier/TextLinksParams;->DEFAULT_SPAN_FACTORY:Ljava/util/function/Function;

    return-object v0
.end method

.method static synthetic access$100(I)I
    .locals 1

    invoke-static {p0}, Landroid/view/textclassifier/TextLinksParams;->checkApplyStrategy(I)I

    move-result v0

    return v0
.end method

.method private static checkApplyStrategy(I)I
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid apply strategy. See TextLinksParams.ApplyStrategy for options."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return p0
.end method

.method public static fromLinkMask(I)Landroid/view/textclassifier/TextLinksParams;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "email"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string/jumbo v1, "phone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "address"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v1, Landroid/view/textclassifier/TextLinksParams$Builder;

    invoke-direct {v1}, Landroid/view/textclassifier/TextLinksParams$Builder;-><init>()V

    invoke-static {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->createWithExplicitEntityList(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextLinksParams$Builder;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinksParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextLinksParams$Builder;->build()Landroid/view/textclassifier/TextLinksParams;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$static$0(Landroid/view/textclassifier/TextLinks$TextLink;)Landroid/view/textclassifier/TextLinks$TextLinkSpan;
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/TextLinks$TextLinkSpan;-><init>(Landroid/view/textclassifier/TextLinks$TextLink;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/text/Spannable;Landroid/view/textclassifier/TextLinks;)I
    .locals 11

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textclassifier/TextLinks$TextLink;

    iget-object v6, p0, Landroid/view/textclassifier/TextLinksParams;->mSpanFactory:Ljava/util/function/Function;

    invoke-interface {v6, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    if-eqz v6, :cond_4

    nop

    invoke-virtual {v4}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v7

    invoke-virtual {v4}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v8

    const-class v9, Landroid/text/style/ClickableSpan;

    invoke-interface {p1, v7, v8, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    array-length v8, v7

    const/16 v9, 0x21

    if-lez v8, :cond_3

    iget v8, p0, Landroid/view/textclassifier/TextLinksParams;->mApplyStrategy:I

    if-ne v8, v2, :cond_4

    array-length v8, v7

    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v10, v7, v5

    invoke-interface {p1, v10}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v8

    invoke-interface {p1, v6, v5, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Landroid/view/textclassifier/TextLinks$TextLink;->getStart()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/textclassifier/TextLinks$TextLink;->getEnd()I

    move-result v8

    invoke-interface {p1, v6, v5, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v1, v1, 0x1

    :cond_4
    :goto_2
    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    const/4 v2, 0x2

    return v2

    :cond_6
    return v5
.end method

.method public getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinksParams;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object v0
.end method
