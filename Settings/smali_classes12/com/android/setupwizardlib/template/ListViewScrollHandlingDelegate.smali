.class public Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;
.super Ljava/lang/Object;
.source "ListViewScrollHandlingDelegate.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final SCROLL_DURATION:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ListViewDelegate"


# instance fields
.field private final mListView:Landroid/widget/ListView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Landroid/widget/ListView;)V
    .locals 0
    .param p1    # Lcom/android/setupwizardlib/template/RequireScrollMixin;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ListView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    iput-object p2, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    add-int v0, p2, p3

    if-lt v0, p4, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    :goto_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method public pageScrollDown()V
    .locals 3

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mListView:Landroid/widget/ListView;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 3

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/setupwizardlib/template/ListViewScrollHandlingDelegate;->mRequireScrollMixin:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->notifyScrollabilityChange(Z)V

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "ListViewDelegate"

    const-string v1, "Cannot require scroll. List view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
