.class public final Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;
.super Ljava/lang/Object;
.source "TextClassifierImplNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImplNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClassificationResult"
.end annotation


# instance fields
.field private final mCollection:Ljava/lang/String;

.field private final mDatetimeResult:Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;

.field private final mScore:F


# direct methods
.method constructor <init>(Ljava/lang/String;FLandroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->mCollection:Ljava/lang/String;

    iput p2, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->mScore:F

    iput-object p3, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->mDatetimeResult:Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;

    return-void
.end method


# virtual methods
.method public getCollection()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->mCollection:Ljava/lang/String;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->mDatetimeResult:Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->mDatetimeResult:Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;->getGranularity()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "date"

    return-object v0

    :pswitch_0
    const-string v0, "datetime"

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->mCollection:Ljava/lang/String;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getDatetimeResult()Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->mDatetimeResult:Landroid/view/textclassifier/TextClassifierImplNative$DatetimeResult;

    return-object v0
.end method

.method public getScore()F
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextClassifierImplNative$ClassificationResult;->mScore:F

    return v0
.end method
