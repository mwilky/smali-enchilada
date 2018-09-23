.class public Landroid/support/v17/leanback/widget/ListRow;
.super Landroid/support/v17/leanback/widget/Row;
.source "ListRow.java"


# instance fields
.field private final mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private mContentDescription:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(JLandroid/support/v17/leanback/widget/HeaderItem;Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/Row;-><init>(JLandroid/support/v17/leanback/widget/HeaderItem;)V

    iput-object p4, p0, Landroid/support/v17/leanback/widget/ListRow;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ListRow;->verify()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/HeaderItem;Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Row;-><init>(Landroid/support/v17/leanback/widget/HeaderItem;)V

    iput-object p2, p0, Landroid/support/v17/leanback/widget/ListRow;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ListRow;->verify()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Row;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRow;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ListRow;->verify()V

    return-void
.end method

.method private verify()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRow;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ObjectAdapter cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRow;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRow;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ListRow;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ListRow;->getHeaderItem()Landroid/support/v17/leanback/widget/HeaderItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HeaderItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HeaderItem;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ListRow;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method
