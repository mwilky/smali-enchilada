.class public Landroid/support/v17/leanback/widget/FocusHighlightHelper;
.super Ljava/lang/Object;
.source "FocusHighlightHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;,
        Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;,
        Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getResId(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    sget v0, Landroid/support/v17/leanback/R$fraction;->lb_focus_zoom_factor_xsmall:I

    return v0

    :pswitch_1
    sget v0, Landroid/support/v17/leanback/R$fraction;->lb_focus_zoom_factor_large:I

    return v0

    :pswitch_2
    sget v0, Landroid/support/v17/leanback/R$fraction;->lb_focus_zoom_factor_medium:I

    return v0

    :pswitch_3
    sget v0, Landroid/support/v17/leanback/R$fraction;->lb_focus_zoom_factor_small:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static isValidZoomIndex(I)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->getResId(I)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static setupBrowseItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;IZ)V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;-><init>(IZ)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setFocusHighlight(Landroid/support/v17/leanback/widget/FocusHighlightHandler;)V

    return-void
.end method

.method public static setupHeaderItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->setupHeaderItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;Z)V

    return-void
.end method

.method public static setupHeaderItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;Z)V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setFocusHighlight(Landroid/support/v17/leanback/widget/FocusHighlightHandler;)V

    return-void
.end method

.method public static setupHeaderItemFocusHighlight(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->setupHeaderItemFocusHighlight(Landroid/support/v17/leanback/widget/VerticalGridView;Z)V

    return-void
.end method

.method public static setupHeaderItemFocusHighlight(Landroid/support/v17/leanback/widget/VerticalGridView;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    new-instance v1, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;

    invoke-direct {v1, p1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setFocusHighlight(Landroid/support/v17/leanback/widget/FocusHighlightHandler;)V

    :cond_0
    return-void
.end method
