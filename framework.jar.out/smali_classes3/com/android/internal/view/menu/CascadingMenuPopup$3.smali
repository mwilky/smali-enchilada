.class Lcom/android/internal/view/menu/CascadingMenuPopup$3;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"

# interfaces
.implements Landroid/widget/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/CascadingMenuPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$400(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, -0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v3}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$000(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v4}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$000(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v4, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v3}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$000(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v1}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$000(Lcom/android/internal/view/menu/CascadingMenuPopup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;

    goto :goto_2

    :cond_3
    nop

    :goto_2
    new-instance v3, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;

    invoke-direct {v3, p0, v1, p2, p1}, Lcom/android/internal/view/menu/CascadingMenuPopup$3$1;-><init>(Lcom/android/internal/view/menu/CascadingMenuPopup$3;Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/view/MenuItem;Lcom/android/internal/view/menu/MenuBuilder;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v6}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$400(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3, p1, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method public onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$3;->this$0:Lcom/android/internal/view/menu/CascadingMenuPopup;

    invoke-static {v0}, Lcom/android/internal/view/menu/CascadingMenuPopup;->access$400(Lcom/android/internal/view/menu/CascadingMenuPopup;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
