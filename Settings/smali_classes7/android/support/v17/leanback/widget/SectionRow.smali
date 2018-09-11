.class public Landroid/support/v17/leanback/widget/SectionRow;
.super Landroid/support/v17/leanback/widget/Row;
.source "SectionRow.java"


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "name"    # Ljava/lang/String;

    .line 26
    new-instance v0, Landroid/support/v17/leanback/widget/HeaderItem;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v17/leanback/widget/HeaderItem;-><init>(JLjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/Row;-><init>(Landroid/support/v17/leanback/widget/HeaderItem;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/HeaderItem;)V
    .locals 0
    .param p1, "headerItem"    # Landroid/support/v17/leanback/widget/HeaderItem;

    .line 22
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Row;-><init>(Landroid/support/v17/leanback/widget/HeaderItem;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/support/v17/leanback/widget/HeaderItem;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/HeaderItem;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/Row;-><init>(Landroid/support/v17/leanback/widget/HeaderItem;)V

    .line 31
    return-void
.end method


# virtual methods
.method public final isRenderedAsRowView()Z
    .locals 1

    .line 35
    const/4 v0, 0x0

    return v0
.end method
