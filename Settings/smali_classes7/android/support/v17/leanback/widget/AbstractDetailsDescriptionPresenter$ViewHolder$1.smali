.class Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$1;
.super Ljava/lang/Object;
.source "AbstractDetailsDescriptionPresenter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    .line 89
    iput-object p1, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$1;->this$0:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 93
    iget-object v0, p0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder$1;->this$0:Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->addPreDrawListener()V

    .line 94
    return-void
.end method
