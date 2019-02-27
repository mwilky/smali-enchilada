.class Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SentenceLevelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;,
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
    }
.end annotation


# static fields
.field public static final EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

.field private static final EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;


# instance fields
.field private final mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/textservice/SentenceSuggestionsInfo;

    sput-object v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    new-instance v1, Landroid/view/textservice/SuggestionsInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    sput-object v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    return-void
.end method

.method static synthetic access$000(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 1

    invoke-direct {p0, p1}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-result-object v0

    return-object v0
.end method

.method private getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v1, v4}, Landroid/text/method/WordIterator;->following(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v4

    move v13, v3

    :goto_0
    move v14, v4

    if-gt v14, v11, :cond_2

    const/4 v15, -0x1

    if-eq v13, v15, :cond_2

    if-eq v14, v15, :cond_2

    if-ltz v13, :cond_0

    if-le v13, v14, :cond_0

    invoke-interface {v2, v14, v13}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v16, Landroid/view/textservice/TextInfo;

    const/4 v5, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v17

    move-object/from16 v3, v16

    move-object v4, v8

    move v7, v9

    move-object/from16 v18, v8

    move/from16 v8, v17

    invoke-direct/range {v3 .. v8}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    new-instance v4, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    invoke-direct {v4, v3, v14, v13}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;-><init>(Landroid/view/textservice/TextInfo;II)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1, v13}, Landroid/text/method/WordIterator;->following(I)I

    move-result v13

    if-ne v13, v15, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v13}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v4

    goto :goto_0

    :cond_2
    :goto_1
    new-instance v3, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-object/from16 v4, p1

    invoke-direct {v3, v4, v12}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;-><init>(Landroid/view/textservice/TextInfo;Ljava/util/ArrayList;)V

    return-object v3
.end method

.method public static reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v0}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v0

    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v1}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v1

    iget v2, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mSize:I

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v5, v2, [Landroid/view/textservice/SuggestionsInfo;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_5

    iget-object v8, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    const/4 v9, 0x0

    move v10, v6

    :goto_1
    array-length v11, p1

    if-ge v10, v11, :cond_3

    aget-object v11, p1, v10

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v12

    iget-object v13, v8, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v13}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v13

    if-ne v12, v13, :cond_2

    move-object v9, v11

    invoke-virtual {v9, v0, v1}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget v10, v8, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mStart:I

    aput v10, v3, v7

    iget v10, v8, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mLength:I

    aput v10, v4, v7

    if-eqz v9, :cond_4

    move-object v10, v9

    goto :goto_3

    :cond_4
    sget-object v10, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    :goto_3
    aput-object v10, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_5
    new-instance v6, Landroid/view/textservice/SentenceSuggestionsInfo;

    invoke-direct {v6, v5, v3, v4}, Landroid/view/textservice/SentenceSuggestionsInfo;-><init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V

    return-object v6

    :cond_6
    :goto_4
    return-object v0
.end method
