.class public Landroid/text/util/Linkify;
.super Ljava/lang/Object;
.source "Linkify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/util/Linkify$TransformFilter;,
        Landroid/text/util/Linkify$MatchFilter;,
        Landroid/text/util/Linkify$LinkifyMask;
    }
.end annotation


# static fields
.field public static final ALL:I = 0xf

.field public static final EMAIL_ADDRESSES:I = 0x2

.field public static final MAP_ADDRESSES:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PHONE_NUMBERS:I = 0x4

.field private static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x5

.field public static final WEB_URLS:I = 0x1

.field public static final sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/util/Linkify$1;

    invoke-direct {v0}, Landroid/text/util/Linkify$1;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    new-instance v0, Landroid/text/util/Linkify$2;

    invoke-direct {v0}, Landroid/text/util/Linkify$2;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    new-instance v0, Landroid/text/util/Linkify$3;

    invoke-direct {v0}, Landroid/text/util/Linkify$3;-><init>()V

    sput-object v0, Landroid/text/util/Linkify;->sPhoneNumberTransformFilter:Landroid/text/util/Linkify$TransformFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static addLinks(Landroid/text/Spannable;ILandroid/content/Context;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    aget-object v4, v1, v2

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2

    sget-object v6, Landroid/util/Patterns;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const-string v4, "http://"

    const-string v5, "https://"

    const-string/jumbo v7, "rtsp://"

    filled-new-array {v4, v5, v7}, [Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_2
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_3

    sget-object v6, Landroid/util/Patterns;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    const-string/jumbo v4, "mailto:"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Landroid/text/util/Linkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_3
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_4

    invoke-static {v2, p0, p2}, Landroid/text/util/Linkify;->gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V

    :cond_4
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_5

    invoke-static {v2, p0}, Landroid/text/util/Linkify;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    :cond_5
    invoke-static {v2}, Landroid/text/util/Linkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_6

    return v0

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/util/LinkSpec;

    iget-object v5, v4, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v6, v4, Landroid/text/util/LinkSpec;->start:I

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    invoke-static {v5, v6, v7, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_1

    :cond_7
    return v3
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .locals 8

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    const/4 v0, 0x1

    if-eqz p3, :cond_1

    array-length v1, p3

    if-ge v1, v0, :cond_2

    :cond_1
    sget-object p3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_2
    array-length v1, p3

    add-int/2addr v1, v0

    new-array v0, v1, [Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    move v1, v2

    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_4

    aget-object v3, p3, v1

    add-int/lit8 v4, v1, 0x1

    if-nez v3, :cond_3

    const-string v5, ""

    goto :goto_1

    :cond_3
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    const/4 v6, 0x1

    if-eqz p4, :cond_5

    invoke-interface {p4, p0, v4, v5}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v6

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0, v3, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4, v5, p0}, Landroid/text/util/Linkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    const/4 v1, 0x1

    :cond_6
    goto :goto_2

    :cond_7
    return v1
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    instance-of v3, v2, Landroid/text/Spannable;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/text/Spannable;

    invoke-static {v3, p1, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    return v4

    :cond_1
    return v0

    :cond_2
    invoke-static {v2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-static {v3, p1, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v4

    :cond_3
    return v0
.end method

.method public static addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;I)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroid/view/textclassifier/TextClassifier;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Landroid/view/textclassifier/TextLinksParams;->fromLinkMask(I)Landroid/view/textclassifier/TextLinksParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroid/view/textclassifier/TextClassifier;",
            "Landroid/view/textclassifier/TextLinksParams;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroid/view/textclassifier/TextClassifier;",
            "Landroid/view/textclassifier/TextLinksParams;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method private static addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "Landroid/view/textclassifier/TextClassifier;",
            "Landroid/view/textclassifier/TextLinksParams;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Landroid/view/textclassifier/TextClassifier;->getMaxGenerateLinksTextLength()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    move-object v9, p0

    invoke-interface {v9, v2, v1}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/textclassifier/TextLinksParams;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v3

    :goto_0
    move-object v10, v3

    new-instance v3, Landroid/view/textclassifier/TextLinks$Request$Builder;

    invoke-direct {v3, v1}, Landroid/view/textclassifier/TextLinks$Request$Builder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setLegacyFallback(Z)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/view/textclassifier/TextLinks$Request$Builder;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/textclassifier/TextLinks$Request$Builder;->build()Landroid/view/textclassifier/TextLinks$Request;

    move-result-object v11

    new-instance v12, Landroid/text/util/-$$Lambda$Linkify$hPjCKfcU4vqhADicCa9bWKrOoog;

    move-object/from16 v13, p1

    invoke-direct {v12, v13, v11}, Landroid/text/util/-$$Lambda$Linkify$hPjCKfcU4vqhADicCa9bWKrOoog;-><init>(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinks$Request;)V

    new-instance v14, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;

    move-object v3, v14

    move-object/from16 v4, p4

    move-object v5, v9

    move-object v6, v1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Landroid/text/util/-$$Lambda$Linkify$ZGgxzuK-YqBkZXo_7HE4xwOLsh0;-><init>(Ljava/util/function/Consumer;Landroid/text/Spannable;Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinksParams;Ljava/lang/Runnable;)V

    if-nez v0, :cond_1

    invoke-static {v12}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-static {v12, v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    return-object v3
.end method

.method public static addLinksAsync(Landroid/widget/TextView;I)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/view/textclassifier/TextLinksParams;->fromLinkMask(I)Landroid/view/textclassifier/TextLinksParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/widget/TextView;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addLinksAsync(Landroid/widget/TextView;Landroid/view/textclassifier/TextLinksParams;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/view/textclassifier/TextLinksParams;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/widget/TextView;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public static addLinksAsync(Landroid/widget/TextView;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Landroid/view/textclassifier/TextLinksParams;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    :goto_0
    new-instance v8, Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;

    invoke-direct {v8, p0, v1, v0}, Landroid/text/util/-$$Lambda$Linkify$wWMJCtMwD1HLtUFna4kOfNQK1Z0;-><init>(Landroid/widget/TextView;Landroid/text/Spannable;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v3

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Landroid/text/util/Linkify;->addLinksAsync(Landroid/text/Spannable;Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinksParams;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v2

    return-object v2
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2

    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    if-eqz p4, :cond_0

    invoke-interface {p4, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Landroid/text/util/LinkSpec;

    invoke-direct {v3}, Landroid/text/util/LinkSpec;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3, v0, p5}, Landroid/text/util/Linkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    iput v1, v3, Landroid/text/util/LinkSpec;->start:I

    iput v2, v3, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-static {v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Landroid/text/util/LinkSpec;

    invoke-direct {v4}, Landroid/text/util/LinkSpec;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int v6, v2, v5

    add-int v7, v1, v2

    iput v7, v4, Landroid/text/util/LinkSpec;->start:I

    add-int v7, v1, v6

    iput v7, v4, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v7

    add-int/2addr v1, v6

    const/4 v7, 0x0

    :try_start_1
    const-string v8, "UTF-8"

    invoke-static {v3, v8}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    nop

    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "geo:0,0?q="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_0
    move-exception v8

    goto :goto_0

    :cond_1
    :goto_1
    nop

    move-object v2, v3

    return-void

    :catch_1
    move-exception v2

    return-void
.end method

.method private static gatherTelLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Landroid/content/Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    if-nez p2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    :goto_0
    move-object v7, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    new-instance v3, Landroid/text/util/LinkSpec;

    invoke-direct {v3}, Landroid/text/util/LinkSpec;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->rawString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/text/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->start()I

    move-result v4

    iput v4, v3, Landroid/text/util/LinkSpec;->start:I

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v4

    iput v4, v3, Landroid/text/util/LinkSpec;->end:I

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic lambda$addLinksAsync$0(Landroid/widget/TextView;Landroid/text/Spannable;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-static {p0}, Landroid/text/util/Linkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$addLinksAsync$1(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 1

    invoke-interface {p0, p1}, Landroid/view/textclassifier/TextClassifier;->generateLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$addLinksAsync$2(Ljava/util/function/Consumer;Landroid/text/Spannable;Ljava/lang/CharSequence;Landroid/view/textclassifier/TextLinksParams;Ljava/lang/Runnable;Landroid/view/textclassifier/TextLinks;)V
    .locals 4

    invoke-virtual {p5}, Landroid/view/textclassifier/TextLinks;->getLinks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const-class v3, Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/textclassifier/TextLinks$TextLinkSpan;

    array-length v2, v0

    sub-int/2addr v2, v1

    :goto_0
    move v1, v2

    if-ltz v1, :cond_2

    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p3, p1, p5}, Landroid/view/textclassifier/TextLinksParams;->apply(Landroid/text/Spannable;Landroid/view/textclassifier/TextLinks;)I

    move-result v1

    if-nez v1, :cond_3

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_3
    if-eqz p0, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9

    if-eqz p3, :cond_0

    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    move v0, v7

    :goto_0
    move v8, v0

    array-length v0, p1

    if-ge v8, v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget-object v3, p1, v8

    const/4 v4, 0x0

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v3, p1, v8

    const/4 v4, 0x0

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v8, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v6, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/text/util/Linkify$4;

    invoke-direct {v0}, Landroid/text/util/Linkify$4;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/util/LinkSpec;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/util/LinkSpec;

    const/4 v5, -0x1

    iget v6, v3, Landroid/text/util/LinkSpec;->start:I

    iget v7, v4, Landroid/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v4, Landroid/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_3

    iget v6, v4, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_0

    add-int/lit8 v5, v2, 0x1

    goto :goto_1

    :cond_0
    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    iget v8, v4, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_1

    add-int/lit8 v5, v2, 0x1

    goto :goto_1

    :cond_1
    iget v6, v3, Landroid/text/util/LinkSpec;->end:I

    iget v7, v3, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v4, Landroid/text/util/LinkSpec;->end:I

    iget v8, v4, Landroid/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    move v5, v2

    :cond_2
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
