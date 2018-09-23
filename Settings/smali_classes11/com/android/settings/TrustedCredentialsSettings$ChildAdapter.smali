.class Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;
.super Landroid/widget/BaseAdapter;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildAdapter"
.end annotation


# instance fields
.field private final EMPTY_STATE_SET:[I

.field private final GROUP_EXPANDED_STATE_SET:[I

.field private final HIDE_CONTAINER_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private final HIDE_LIST_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private final SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private mContainerView:Landroid/widget/LinearLayout;

.field private final mGroupPosition:I

.field private mHeaderView:Landroid/view/ViewGroup;

.field private mIndicatorView:Landroid/widget/ImageView;

.field private mIsListExpanded:Z

.field private mListView:Landroid/widget/ListView;

.field private final mObserver:Landroid/database/DataSetObserver;

.field private final mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

.field final synthetic this$0:Lcom/android/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;I)V
    .locals 5

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x1

    new-array v0, p1, [I

    const/4 v1, 0x0

    const v2, 0x10100a8

    aput v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->GROUP_EXPANDED_STATE_SET:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->EMPTY_STATE_SET:[I

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->HIDE_CONTAINER_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->HIDE_LIST_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mObserver:Landroid/database/DataSetObserver;

    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    iput-object p2, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iput p3, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    iget-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;ILcom/android/settings/TrustedCredentialsSettings$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;I)V

    return-void
.end method

.method static synthetic access$2101(Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic access$2201(Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;)V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method private checkGroupExpandableAndStartWarningActivity()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(I)Z

    move-result v0

    return v0
.end method

.method private getGroupIndicator()Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x101006f

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private refreshViews()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->GROUP_EXPANDED_STATE_SET:[I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->EMPTY_STATE_SET:[I

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setImageState([IZ)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->HIDE_LIST_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    iget-boolean v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->SHOW_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->HIDE_CONTAINER_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChild(II)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->checkGroupExpandableAndStartWarningActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->refreshViews()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->this$0:Lcom/android/settings/TrustedCredentialsSettings;

    invoke-virtual {p0, p3}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->getItem(I)Lcom/android/settings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->access$1000(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method public setContainerView(Landroid/widget/LinearLayout;)V
    .locals 5

    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    const v1, 0x7f0a00e5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mContainerView:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0225

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0203

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIndicatorView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->getGroupIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0223

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v3, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setExpandIfAvailable(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mParent:Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;

    iget v2, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mGroupPosition:I

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/TrustedCredentialsSettings$GroupAdapter;->checkGroupExpandableAndStartWarningActivity(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mIsListExpanded:Z

    invoke-direct {p0}, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->refreshViews()V

    return-void
.end method

.method public showDivider(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0224

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showHeader(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings$ChildAdapter;->mHeaderView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
