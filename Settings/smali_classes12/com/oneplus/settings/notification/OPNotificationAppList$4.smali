.class Lcom/oneplus/settings/notification/OPNotificationAppList$4;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    iget-object v1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-static {v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$400(Lcom/oneplus/settings/notification/OPNotificationAppList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$500(Lcom/oneplus/settings/notification/OPNotificationAppList;Ljava/util/ArrayList;)V

    return-void
.end method
