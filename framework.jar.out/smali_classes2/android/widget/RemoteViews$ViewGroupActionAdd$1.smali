.class Landroid/widget/RemoteViews$ViewGroupActionAdd$1;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewGroupActionAdd;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$ViewGroupActionAdd;

.field final synthetic val$targetVg:Landroid/view/ViewGroup;

.field final synthetic val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

.field final synthetic val$tree:Landroid/widget/RemoteViews$ViewTree;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViews$ViewGroupActionAdd;

    .line 1640
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionAdd;

    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    iput-object p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$targetVg:Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$1;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/widget/RemoteViews$ActionException;
        }
    .end annotation

    .line 1644
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    .line 1645
    iget-object v0, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$targetVg:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    invoke-static {v1}, Landroid/widget/RemoteViews$AsyncApplyTask;->access$1300(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-static {v2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->access$1400(Landroid/widget/RemoteViews$ViewGroupActionAdd;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1646
    return-void
.end method
