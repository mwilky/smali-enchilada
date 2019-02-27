.class Landroid/widget/RemoteViews$ViewTree;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTree"
.end annotation


# static fields
.field private static final INSERT_AT_END_INDEX:I = -0x1


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RemoteViews$ViewTree;",
            ">;"
        }
    .end annotation
.end field

.field private mRoot:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/widget/RemoteViews$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/widget/RemoteViews$ViewTree;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    return-object p1
.end method

.method private addViewChild(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/RemoteViews$ViewTree;

    invoke-direct {v0, p1}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addChild(Landroid/widget/RemoteViews$ViewTree;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/widget/RemoteViews$ViewTree;->addChild(Landroid/widget/RemoteViews$ViewTree;I)V

    return-void
.end method

.method public addChild(Landroid/widget/RemoteViews$ViewTree;I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {p1}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public createTree()V
    .locals 4

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/widget/RemoteViews$ViewTree;->addViewChild(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    :goto_0
    return-object v1
.end method

.method public findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;
    .locals 4

    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$ViewTree;->findViewTreeById(I)Landroid/widget/RemoteViews$ViewTree;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public replaceView(Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewTree;->mRoot:Landroid/view/View;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViews$ViewTree;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/widget/RemoteViews$ViewTree;->createTree()V

    return-void
.end method
