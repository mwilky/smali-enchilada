.class public final Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;
.super Ljava/lang/Object;
.source "TextClassifierImplNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImplNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnnotatedSpan"
.end annotation


# instance fields
.field private final mClassification:[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

.field private final mEndIndex:I

.field private final mStartIndex:I


# direct methods
.method constructor <init>(II[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->mStartIndex:I

    iput p2, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->mEndIndex:I

    iput-object p3, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->mClassification:[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

    return-void
.end method


# virtual methods
.method public getClassification()[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->mClassification:[Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;

    return-object v0
.end method

.method public getEndIndex()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->mEndIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$AnnotatedSpan;->mStartIndex:I

    return v0
.end method
