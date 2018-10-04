.class Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnClickFillInIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnClickFillInIntent;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_2

    const-string v1, "RemoteViews"

    const-string v2, "Collection item doesn\'t have AdapterView parent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/app/PendingIntent;

    if-nez v1, :cond_3

    const-string v1, "RemoteViews"

    const-string v2, "Attempting setOnClickFillInIntent without calling setPendingIntentTemplate on parent."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-static {p1}, Landroid/widget/RemoteViews;->access$300(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    iget-object v3, v3, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v4, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    iget-object v4, v4, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v3, p1, v1, v4}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    return-void
.end method
