.class public Lcom/android/setupwizardlib/template/ListMixin;
.super Ljava/lang/Object;
.source "ListMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private mDefaultDivider:Landroid/graphics/drawable/Drawable;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerInsetEnd:I

.field private mDividerInsetStart:I

.field private mListView:Landroid/widget/ListView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Lcom/android/setupwizardlib/TemplateLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v3, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_android_entries:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/android/setupwizardlib/items/ItemInflater;

    invoke-direct {v4, v0}, Lcom/android/setupwizardlib/items/ItemInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Lcom/android/setupwizardlib/items/ItemInflater;->inflate(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/setupwizardlib/items/ItemGroup;

    new-instance v5, Lcom/android/setupwizardlib/items/ItemAdapter;

    invoke-direct {v5, v4}, Lcom/android/setupwizardlib/items/ItemAdapter;-><init>(Lcom/android/setupwizardlib/items/ItemHierarchy;)V

    invoke-virtual {p0, v5}, Lcom/android/setupwizardlib/template/ListMixin;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_suwDividerInset:I

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-eq v4, v5, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInset(I)V

    goto :goto_0

    :cond_1
    sget v5, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_suwDividerInsetStart:I

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    sget v6, Lcom/android/setupwizardlib/R$styleable;->SuwListMixin_suwDividerInsetEnd:I

    invoke-virtual {v1, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    invoke-virtual {p0, v5, v2}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInsets(II)V

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getListViewInternal()Landroid/widget/ListView;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mListView:Landroid/widget/ListView;

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private updateDivider()V
    .locals 9

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/setupwizardlib/template/ListMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v2}, Lcom/android/setupwizardlib/TemplateLayout;->isLayoutDirectionResolved()Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v3, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDefaultDivider:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetStart:I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetEnd:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/setupwizardlib/template/ListMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-static/range {v3 .. v8}, Lcom/android/setupwizardlib/util/DrawableLayoutDirectionHelper;->createRelativeInsetDrawable(Landroid/graphics/drawable/Drawable;IIIILandroid/view/View;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 3

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    return-object v2

    :cond_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    iget v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetEnd:I

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    iget v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetStart:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public onLayout()V
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->updateDivider()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->getListViewInternal()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/setupwizardlib/template/ListMixin;->setDividerInsets(II)V

    return-void
.end method

.method public setDividerInsets(II)V
    .locals 0

    iput p1, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetStart:I

    iput p2, p0, Lcom/android/setupwizardlib/template/ListMixin;->mDividerInsetEnd:I

    invoke-direct {p0}, Lcom/android/setupwizardlib/template/ListMixin;->updateDivider()V

    return-void
.end method
