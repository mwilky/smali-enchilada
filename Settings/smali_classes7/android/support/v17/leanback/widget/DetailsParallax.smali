.class public Landroid/support/v17/leanback/widget/DetailsParallax;
.super Landroid/support/v17/leanback/widget/RecyclerViewParallax;
.source "DetailsParallax.java"


# instance fields
.field final mFrameBottom:Landroid/support/v17/leanback/widget/Parallax$IntProperty;

.field final mFrameTop:Landroid/support/v17/leanback/widget/Parallax$IntProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 40
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;-><init>()V

    .line 42
    const-string v0, "overviewRowTop"

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/DetailsParallax;->addProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->adapterPosition(I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object v0

    sget v2, Landroid/support/v17/leanback/R$id;->details_frame:I

    .line 44
    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->viewId(I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsParallax;->mFrameTop:Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    .line 47
    const-string v0, "overviewRowBottom"

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/DetailsParallax;->addProperty(Ljava/lang/String;)Landroid/util/Property;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    .line 48
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->adapterPosition(I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->details_frame:I

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->viewId(I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object v0

    .line 50
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->fraction(F)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/DetailsParallax;->mFrameBottom:Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    .line 52
    return-void
.end method


# virtual methods
.method public getOverviewRowBottom()Landroid/support/v17/leanback/widget/Parallax$IntProperty;
    .locals 1

    .line 67
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsParallax;->mFrameBottom:Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    return-object v0
.end method

.method public getOverviewRowTop()Landroid/support/v17/leanback/widget/Parallax$IntProperty;
    .locals 1

    .line 59
    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsParallax;->mFrameTop:Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    return-object v0
.end method
