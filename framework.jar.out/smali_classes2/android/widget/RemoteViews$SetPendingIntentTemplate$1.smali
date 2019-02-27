.class Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, p1, Landroid/widget/AdapterViewAnimator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    nop

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x102024d

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroid/content/Intent;

    if-eqz v5, :cond_2

    move-object v1, v4

    check-cast v1, Landroid/content/Intent;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-static {p2}, Landroid/widget/RemoteViews;->access$300(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iget-object v5, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v6, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iget-object v6, v6, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v5, p2, v6, v1}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    :cond_5
    return-void
.end method
