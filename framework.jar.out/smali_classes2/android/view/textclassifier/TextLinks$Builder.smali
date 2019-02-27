.class public final Landroid/view/textclassifier/TextLinks$Builder;
.super Ljava/lang/Object;
.source "TextLinks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextLinks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mFullText:Ljava/lang/String;

.field private final mLinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$Builder;->mFullText:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addLink(IILjava/util/Map;)Landroid/view/textclassifier/TextLinks$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)",
            "Landroid/view/textclassifier/TextLinks$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/textclassifier/TextLinks$TextLink;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Landroid/view/textclassifier/TextLinks$TextLink;-><init>(IILjava/util/Map;Landroid/text/style/URLSpan;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method addLink(IILjava/util/Map;Landroid/text/style/URLSpan;)Landroid/view/textclassifier/TextLinks$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/text/style/URLSpan;",
            ")",
            "Landroid/view/textclassifier/TextLinks$Builder;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    new-instance v1, Landroid/view/textclassifier/TextLinks$TextLink;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/view/textclassifier/TextLinks$TextLink;-><init>(IILjava/util/Map;Landroid/text/style/URLSpan;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/view/textclassifier/TextLinks;
    .locals 4

    new-instance v0, Landroid/view/textclassifier/TextLinks;

    iget-object v1, p0, Landroid/view/textclassifier/TextLinks$Builder;->mFullText:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/textclassifier/TextLinks;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/view/textclassifier/TextLinks$1;)V

    return-object v0
.end method

.method public clearTextLinks()Landroid/view/textclassifier/TextLinks$Builder;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks$Builder;->mLinks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method
