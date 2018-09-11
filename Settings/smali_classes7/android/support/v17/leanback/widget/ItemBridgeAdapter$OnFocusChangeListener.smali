.class final Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;
.super Ljava/lang/Object;
.source "ItemBridgeAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnFocusChangeListener"
.end annotation


# instance fields
.field mChainedListener:Landroid/view/View$OnFocusChangeListener;

.field final synthetic this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    .line 77
    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 86
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 89
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;->this$0:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->mFocusHighlight:Landroid/support/v17/leanback/widget/FocusHighlightHandler;

    invoke-interface {v0, p1, p2}, Landroid/support/v17/leanback/widget/FocusHighlightHandler;->onItemFocused(Landroid/view/View;Z)V

    .line 92
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;->mChainedListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_2

    .line 93
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$OnFocusChangeListener;->mChainedListener:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 95
    :cond_2
    return-void
.end method
