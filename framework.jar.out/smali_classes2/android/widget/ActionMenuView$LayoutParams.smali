.class public Landroid/widget/ActionMenuView$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public expanded:Z

.field public extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 828
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 829
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 830
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "isOverflowButton"    # Z

    .line 834
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 835
    iput-boolean p3, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 836
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 815
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 816
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "other"    # Landroid/view/ViewGroup$LayoutParams;

    .line 819
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    return-void
.end method

.method public constructor <init>(Landroid/widget/ActionMenuView$LayoutParams;)V
    .locals 1
    .param p1, "other"    # Landroid/widget/ActionMenuView$LayoutParams;

    .line 823
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 824
    iget-boolean v0, p1, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean v0, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 825
    return-void
.end method


# virtual methods
.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 841
    invoke-super {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 843
    const-string v0, "layout:overFlowButton"

    iget-boolean v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 844
    const-string v0, "layout:cellsUsed"

    iget v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 845
    const-string v0, "layout:extraPixels"

    iget v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 846
    const-string v0, "layout:expandable"

    iget-boolean v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 847
    const-string v0, "layout:preventEdgeOffset"

    iget-boolean v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 848
    return-void
.end method
