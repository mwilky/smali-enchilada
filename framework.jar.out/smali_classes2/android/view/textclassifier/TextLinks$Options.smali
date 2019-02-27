.class public final Landroid/view/textclassifier/TextLinks$Options;
.super Ljava/lang/Object;
.source "TextLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Options"
.end annotation


# instance fields
.field private mApplyStrategy:I

.field private mCallingPackageName:Ljava/lang/String;

.field private mDefaultLocales:Landroid/os/LocaleList;

.field private mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private mLegacyFallback:Z

.field private final mRequest:Landroid/view/textclassifier/TextLinks$Request;

.field private final mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

.field private mSpanFactory:Ljava/util/function/Function;
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
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/textclassifier/TextLinks$Options;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    iput-object p2, p0, Landroid/view/textclassifier/TextLinks$Options;->mRequest:Landroid/view/textclassifier/TextLinks$Request;

    return-void
.end method

.method private static checkValidApplyStrategy(I)V
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid apply strategy. See TextLinks.ApplyStrategy for options."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static from(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)Landroid/view/textclassifier/TextLinks$Options;
    .locals 2

    new-instance v0, Landroid/view/textclassifier/TextLinks$Options;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextLinks$Options;-><init>(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;)V

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getDefaultLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextLinks$Options;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Options;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextLinks$Request;->getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextLinks$Options;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Options;

    return-object v0
.end method

.method public static fromLinkMask(I)Landroid/view/textclassifier/TextLinks$Options;
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
    new-instance v1, Landroid/view/textclassifier/TextLinks$Options;

    invoke-direct {v1}, Landroid/view/textclassifier/TextLinks$Options;-><init>()V

    invoke-static {v0}, Landroid/view/textclassifier/TextClassifier$EntityConfig;->createWithEntityList(Ljava/util/Collection;)Landroid/view/textclassifier/TextClassifier$EntityConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextLinks$Options;->setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Options;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getApplyStrategy()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextLinks$Options;->mApplyStrategy:I

    return v0
.end method

.method public getDefaultLocales()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Options;->mDefaultLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getEntityConfig()Landroid/view/textclassifier/TextClassifier$EntityConfig;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Options;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object v0
.end method

.method public getRequest()Landroid/view/textclassifier/TextLinks$Request;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Options;->mRequest:Landroid/view/textclassifier/TextLinks$Request;

    return-object v0
.end method

.method public getSessionId()Landroid/view/textclassifier/TextClassificationSessionId;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Options;->mSessionId:Landroid/view/textclassifier/TextClassificationSessionId;

    return-object v0
.end method

.method public getSpanFactory()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Options;->mSpanFactory:Ljava/util/function/Function;

    return-object v0
.end method

.method public setApplyStrategy(I)Landroid/view/textclassifier/TextLinks$Options;
    .locals 0

    invoke-static {p1}, Landroid/view/textclassifier/TextLinks$Options;->checkValidApplyStrategy(I)V

    iput p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mApplyStrategy:I

    return-object p0
.end method

.method public setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Options;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mDefaultLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Options;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object p0
.end method

.method public setSpanFactory(Ljava/util/function/Function;)Landroid/view/textclassifier/TextLinks$Options;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;)",
            "Landroid/view/textclassifier/TextLinks$Options;"
        }
    .end annotation

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Options;->mSpanFactory:Ljava/util/function/Function;

    return-object p0
.end method
