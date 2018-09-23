.class public Landroid/support/v17/leanback/widget/Row;
.super Ljava/lang/Object;
.source "Row.java"


# static fields
.field private static final FLAG_ID_USE_HEADER:I = 0x1

.field private static final FLAG_ID_USE_ID:I = 0x0

.field private static final FLAG_ID_USE_MASK:I = 0x1


# instance fields
.field private mFlags:I

.field private mHeaderItem:Landroid/support/v17/leanback/widget/HeaderItem;

.field private mId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Row;->mFlags:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/Row;->mId:J

    return-void
.end method

.method public constructor <init>(JLandroid/support/v17/leanback/widget/HeaderItem;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Row;->mFlags:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/Row;->mId:J

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/Row;->setId(J)V

    invoke-virtual {p0, p3}, Landroid/support/v17/leanback/widget/Row;->setHeaderItem(Landroid/support/v17/leanback/widget/HeaderItem;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/HeaderItem;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Row;->mFlags:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/Row;->mId:J

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Row;->setHeaderItem(Landroid/support/v17/leanback/widget/HeaderItem;)V

    return-void
.end method


# virtual methods
.method final getFlags()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/Row;->mFlags:I

    return v0
.end method

.method public final getHeaderItem()Landroid/support/v17/leanback/widget/HeaderItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Row;->mHeaderItem:Landroid/support/v17/leanback/widget/HeaderItem;

    return-object v0
.end method

.method public final getId()J
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/widget/Row;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Row;->getHeaderItem()Landroid/support/v17/leanback/widget/HeaderItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/HeaderItem;->getId()J

    move-result-wide v1

    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    return-wide v1

    :cond_1
    iget-wide v0, p0, Landroid/support/v17/leanback/widget/Row;->mId:J

    return-wide v0
.end method

.method public isRenderedAsRowView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final setFlags(II)V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/Row;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/Row;->mFlags:I

    return-void
.end method

.method public final setHeaderItem(Landroid/support/v17/leanback/widget/HeaderItem;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/Row;->mHeaderItem:Landroid/support/v17/leanback/widget/HeaderItem;

    return-void
.end method

.method public final setId(J)V
    .locals 2

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/Row;->mId:J

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Row;->setFlags(II)V

    return-void
.end method
