.class Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;
.super Landroid/os/AsyncTask;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemNotificationAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/oneplus/aod/NotificationData$Entry;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mEntry:Lcom/oneplus/aod/NotificationData$Entry;

.field final synthetic this$0:Lcom/oneplus/aod/NotificationManager;


# direct methods
.method private constructor <init>(Lcom/oneplus/aod/NotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/aod/NotificationManager;Lcom/oneplus/aod/NotificationManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;-><init>(Lcom/oneplus/aod/NotificationManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/oneplus/aod/NotificationData$Entry;)Ljava/lang/Boolean;
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->mEntry:Lcom/oneplus/aod/NotificationData$Entry;

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->this$0:Lcom/oneplus/aod/NotificationManager;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v1}, Lcom/oneplus/aod/NotificationManager;->access$600(Lcom/oneplus/aod/NotificationManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->mEntry:Lcom/oneplus/aod/NotificationData$Entry;

    iget-object v2, v2, Lcom/oneplus/aod/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/NotificationManager;->access$900(Lcom/oneplus/aod/NotificationManager;Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/oneplus/aod/NotificationData$Entry;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->doInBackground([Lcom/oneplus/aod/NotificationData$Entry;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->mEntry:Lcom/oneplus/aod/NotificationData$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->this$0:Lcom/oneplus/aod/NotificationManager;

    invoke-static {v0}, Lcom/oneplus/aod/NotificationManager;->access$1000(Lcom/oneplus/aod/NotificationManager;)Lcom/oneplus/aod/NotificationData;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->mEntry:Lcom/oneplus/aod/NotificationData$Entry;

    iget-object v1, v1, Lcom/oneplus/aod/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/NotificationData;->get(Ljava/lang/String;)Lcom/oneplus/aod/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object p1, v0, Lcom/oneplus/aod/NotificationData$Entry;->mIsSystemNotification:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationManager$SystemNotificationAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
