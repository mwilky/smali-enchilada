.class public final Landroid/view/textclassifier/TextClassifier$Utils;
.super Ljava/lang/Object;
.source "TextClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Utils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLinks(Landroid/view/textclassifier/TextLinks$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Landroid/view/textclassifier/TextClassifier$Utils;->linkMask(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    nop

    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-static {p2}, Landroid/view/textclassifier/TextClassifier$Utils;->entityScores(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7, v4}, Landroid/view/textclassifier/TextLinks$Builder;->addLink(IILjava/util/Map;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static checkArgument(Ljava/lang/CharSequence;II)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-ltz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gt p2, v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    if-le p2, p1, :cond_3

    move v0, v1

    nop

    :cond_3
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    return-void
.end method

.method static checkMainThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "androidtc"

    const-string v1, "TextClassifier called on main thread"

    invoke-static {v0, v1}, Landroid/view/textclassifier/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static checkTextLength(Ljava/lang/CharSequence;I)V
    .locals 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string/jumbo v1, "text.length()"

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    return-void
.end method

.method private static entityScores(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static generateLegacyLinks(Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks;
    .locals 4

    invoke-virtual {p0}, Landroid/view/textclassifier/TextLinks$Request;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/view/textclassifier/TextLinks$Builder;

    invoke-direct {v1, v0}, Landroid/view/textclassifier/TextLinks$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->resolveEntityListModifications(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "url"

    invoke-static {v1, v0, v3}, Landroid/view/textclassifier/TextClassifier$Utils;->addLinks(Landroid/view/textclassifier/TextLinks$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v3, "phone"

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "phone"

    invoke-static {v1, v0, v3}, Landroid/view/textclassifier/TextClassifier$Utils;->addLinks(Landroid/view/textclassifier/TextLinks$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "email"

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "email"

    invoke-static {v1, v0, v3}, Landroid/view/textclassifier/TextClassifier$Utils;->addLinks(Landroid/view/textclassifier/TextLinks$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroid/view/textclassifier/TextLinks$Builder;->build()Landroid/view/textclassifier/TextLinks;

    move-result-object v3

    return-object v3
.end method

.method private static linkMask(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x1c56f

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x5c24b9c

    if-eq v0, v1, :cond_1

    const v1, 0x65b3d6e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v0, "email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v3

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_2
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
