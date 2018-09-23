.class Lcom/android/server/notification/NotificationManagerService$12$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$12;->removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$12;

.field final synthetic val$notificationId:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService$12;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->this$1:Lcom/android/server/notification/NotificationManagerService$12;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$notificationId:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->this$1:Lcom/android/server/notification/NotificationManagerService$12;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->this$1:Lcom/android/server/notification/NotificationManagerService$12;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->this$1:Lcom/android/server/notification/NotificationManagerService$12;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$notificationId:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$userId:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService$12;->access$6500(Lcom/android/server/notification/NotificationManagerService$12;Ljava/util/ArrayList;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->this$1:Lcom/android/server/notification/NotificationManagerService$12;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->this$1:Lcom/android/server/notification/NotificationManagerService$12;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$notificationId:I

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$userId:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService$12;->access$6500(Lcom/android/server/notification/NotificationManagerService$12;Ljava/util/ArrayList;Ljava/lang/String;II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
