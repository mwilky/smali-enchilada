.class public Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;
.super Ljava/lang/Object;
.source "MultiActionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/MultiActionsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiAction"
.end annotation


# instance fields
.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mId:J

.field private mIndex:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mId:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mIndex:I

    return-void
.end method


# virtual methods
.method public getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mId:J

    return-wide v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mIndex:I

    return v0
.end method

.method public incrementIndex()V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->setIndex(I)V

    return-void
.end method

.method public setDrawables([Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mDrawables:[Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mIndex:I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mIndex:I

    :cond_0
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/MultiActionsProvider$MultiAction;->mIndex:I

    return-void
.end method
