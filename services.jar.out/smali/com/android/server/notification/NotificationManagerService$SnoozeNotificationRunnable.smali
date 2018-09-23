.class public Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SnoozeNotificationRunnable"
.end annotation


# instance fields
.field private final mDuration:J

.field private final mKey:Ljava/lang/String;

.field private final mSnoozeCriterionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mKey:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mDuration:J

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$1100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeLocked(Lcom/android/server/notification/NotificationRecord;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method snoozeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    nop

    :goto_0
    move v1, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_2

    :cond_1
    nop

    :goto_1
    move v1, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    add-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    :cond_3
    :goto_2
    goto :goto_3

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V

    :goto_3
    return-void
.end method

.method snoozeNotificationLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v1, 0x33f

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x473

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x340

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$6700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    const/16 v4, 0x12

    const/4 v6, 0x0

    move-object v2, p1

    move v5, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->access$6800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mSnoozeCriterionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantSnoozedLocked(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$4300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->mDuration:J

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;J)V

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->recordSnoozed()V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    return-void
.end method
