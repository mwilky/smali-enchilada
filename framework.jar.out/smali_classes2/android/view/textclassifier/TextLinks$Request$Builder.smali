.class public final Landroid/view/textclassifier/TextLinks$Request$Builder;
.super Ljava/lang/Object;
.source "TextLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCallingPackageName:Ljava/lang/String;

.field private mDefaultLocales:Landroid/os/LocaleList;

.field private mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

.field private mLegacyFallback:Z

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mLegacyFallback:Z

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextLinks$Request;
    .locals 8

    new-instance v7, Landroid/view/textclassifier/TextLinks$Request;

    iget-object v1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    iget-object v3, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    iget-boolean v4, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mLegacyFallback:Z

    iget-object v5, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mCallingPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextLinks$Request;-><init>(Ljava/lang/CharSequence;Landroid/os/LocaleList;Landroid/view/textclassifier/TextClassifier$EntityConfig;ZLjava/lang/String;Landroid/view/textclassifier/TextLinks$1;)V

    return-object v7
.end method

.method public setCallingPackageName(Ljava/lang/String;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mCallingPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mEntityConfig:Landroid/view/textclassifier/TextClassifier$EntityConfig;

    return-object p0
.end method

.method public setLegacyFallback(Z)Landroid/view/textclassifier/TextLinks$Request$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/textclassifier/TextLinks$Request$Builder;->mLegacyFallback:Z

    return-object p0
.end method
