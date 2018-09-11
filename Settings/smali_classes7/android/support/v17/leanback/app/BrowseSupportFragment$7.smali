.class Landroid/support/v17/leanback/app/BrowseSupportFragment$7;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/app/BrowseSupportFragment;

    .line 1299
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1302
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$7;->this$0:Landroid/support/v17/leanback/app/BrowseSupportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseSupportFragment;->showHeaders(Z)V

    .line 1303
    return-void
.end method
