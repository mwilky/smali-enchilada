.class Lcom/android/settings/dashboard/SummaryLoader$Worker;
.super Landroid/os/Handler;
.source "SummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SummaryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation


# static fields
.field private static final MSG_GET_CATEGORY_TILES_AND_SET_LISTENING:I = 0x1

.field private static final MSG_GET_PROVIDER:I = 0x2

.field private static final MSG_SET_LISTENING:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/SummaryLoader;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v1, v0}, Lcom/android/settings/dashboard/SummaryLoader;->access$600(Lcom/android/settings/dashboard/SummaryLoader;Z)V

    goto :goto_3

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    iget-object v1, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v1, v0}, Lcom/android/settings/dashboard/SummaryLoader;->access$500(Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v0}, Lcom/android/settings/dashboard/SummaryLoader;->access$400(Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v2}, Lcom/android/settings/dashboard/SummaryLoader;->access$300(Lcom/android/settings/dashboard/SummaryLoader;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v5, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v5, v4}, Lcom/android/settings/dashboard/SummaryLoader;->access$500(Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/settings/dashboard/SummaryLoader$Worker;->this$0:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-static {v3, v1}, Lcom/android/settings/dashboard/SummaryLoader;->access$600(Lcom/android/settings/dashboard/SummaryLoader;Z)V

    goto :goto_3

    :cond_3
    :goto_2
    return-void

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
