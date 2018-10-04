.class public final Landroid/view/textclassifier/TextClassification$Request$Builder;
.super Ljava/lang/Object;
.source "TextClassification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassification$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDefaultLocales:Landroid/os/LocaleList;

.field private final mEndIndex:I

.field private mReferenceTime:Ljava/time/ZonedDateTime;

.field private final mStartIndex:I

.field private final mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Landroid/view/textclassifier/TextClassifier$Utils;->checkArgument(Ljava/lang/CharSequence;II)V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mStartIndex:I

    iput p3, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mEndIndex:I

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextClassification$Request;
    .locals 8

    new-instance v7, Landroid/view/textclassifier/TextClassification$Request;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mStartIndex:I

    iget v3, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mEndIndex:I

    iget-object v4, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    iget-object v5, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/textclassifier/TextClassification$Request;-><init>(Ljava/lang/CharSequence;IILandroid/os/LocaleList;Ljava/time/ZonedDateTime;Landroid/view/textclassifier/TextClassification$1;)V

    return-object v7
.end method

.method public setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mDefaultLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public setReferenceTime(Ljava/time/ZonedDateTime;)Landroid/view/textclassifier/TextClassification$Request$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$Request$Builder;->mReferenceTime:Ljava/time/ZonedDateTime;

    return-object p0
.end method
