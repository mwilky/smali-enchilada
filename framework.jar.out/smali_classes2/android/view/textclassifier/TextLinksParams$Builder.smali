.class public final Landroid/view/textclassifier/TextLinksParams$Builder;
.super Ljava/lang/Object;
.source "TextLinksParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinksParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mApplyStrategy:I

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/textclassifier/TextLinksParams$Builder;->mApplyStrategy:I

    invoke-static {}, Landroid/view/textclassifier/TextLinksParams;->access$000()Ljava/util/function/Function;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextLinksParams$Builder;->mSpanFactory:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/textclassifier/TextLinksParams;
    .locals 4

    new-instance v0, Landroid/view/textclassifier/TextLinksParams;

    iget v1, p0, Landroid/view/textclassifier/TextLinksParams$Builder;->mApplyStrategy:I

    iget-object v2, p0, Landroid/view/textclassifier/TextLinksParams$Builder;->mSpanFactory:Ljava/util/function/Function;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/textclassifier/TextLinksParams;-><init>(ILjava/util/function/Function;Landroid/view/textclassifier/TextLinksParams$1;)V

    return-object v0
.end method

.method public setApplyStrategy(I)Landroid/view/textclassifier/TextLinksParams$Builder;
    .locals 1

    invoke-static {p1}, Landroid/view/textclassifier/TextLinksParams;->access$100(I)I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextLinksParams$Builder;->mApplyStrategy:I

    return-object p0
.end method

.method public setEntityConfig(Landroid/view/textclassifier/TextClassifier$EntityConfig;)Landroid/view/textclassifier/TextLinksParams$Builder;
    .locals 0

    return-object p0
.end method

.method public setSpanFactory(Ljava/util/function/Function;)Landroid/view/textclassifier/TextLinksParams$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;)",
            "Landroid/view/textclassifier/TextLinksParams$Builder;"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {}, Landroid/view/textclassifier/TextLinksParams;->access$000()Ljava/util/function/Function;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Landroid/view/textclassifier/TextLinksParams$Builder;->mSpanFactory:Ljava/util/function/Function;

    return-object p0
.end method
