.class public abstract Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.super Ljava/lang/Object;
.source "ObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ObjectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DataObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 43
    return-void
.end method

.method public onItemMoved(II)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .line 85
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onChanged()V

    .line 86
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 53
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onChanged()V

    .line 54
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 65
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onChanged()V

    .line 66
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 75
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onChanged()V

    .line 76
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 95
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onChanged()V

    .line 96
    return-void
.end method
