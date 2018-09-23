.class public Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "RecyclerViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;


# static fields
.field private static final TAG:Ljava/lang/String; = "RVRequireScrollMixin"


# instance fields
.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0
    .param p1    # Lcom/android/setupwizardlib/template/RequireScrollMixin;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    iput-object p2, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->canScrollDown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;)Lcom/android/setupwizardlib/template/RequireScrollMixin;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    return-object v0
.end method

.method private canScrollDown()Z
    .locals 4

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v0

    iget-object v2, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v2

    iget-object v3, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->computeVerticalScrollExtent()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v2, :cond_0

    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    :cond_1
    return v1
.end method


# virtual methods
.method public pageScrollDown()V
    .locals 3

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 2

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate$1;-><init>(Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->canScrollDown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RecyclerViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "RVRequireScrollMixin"

    const-string v1, "Cannot require scroll. Recycler view is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
