.class Lcom/android/server/display/ColorDisplayService$CustomAutoMode;
.super Lcom/android/server/display/ColorDisplayService$AutoMode;
.source "ColorDisplayService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomAutoMode"
.end annotation


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mEndTime:Ljava/time/LocalTime;

.field private mLastActivatedTime:Ljava/time/LocalDateTime;

.field private mStartTime:Ljava/time/LocalTime;

.field private final mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/display/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/ColorDisplayService$1;)V

    invoke-virtual {p1}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode$1;-><init>(Lcom/android/server/display/ColorDisplayService$CustomAutoMode;Lcom/android/server/display/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/ColorDisplayService$CustomAutoMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method private updateActivated()V
    .locals 5

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v1, v0}, Lcom/android/server/display/ColorDisplayService;->getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v2, v1}, Lcom/android/server/display/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-virtual {v4, v2}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v3

    :cond_1
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v4, v3, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    :cond_3
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v4}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v4, v0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    return-void
.end method

.method private updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V
    .locals 11

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    invoke-static {v0, p2}, Lcom/android/server/display/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    invoke-static {v0, p2}, Lcom/android/server/display/ColorDisplayService;->getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    :goto_0
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x1

    const-string v6, "ColorDisplayService"

    const/4 v8, 0x0

    move-wide v4, v9

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v0}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getLastActivatedTime()Ljava/time/LocalDateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateNextAlarm(Ljava/lang/Boolean;Ljava/time/LocalDateTime;)V

    return-void
.end method

.method public onAlarm()V
    .locals 2

    const-string v0, "ColorDisplayService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method public onStart()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-virtual {v1}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mStartTime:Ljava/time/LocalTime;

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mEndTime:Ljava/time/LocalTime;

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getLastActivatedTime()Ljava/time/LocalDateTime;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->updateActivated()V

    return-void
.end method

.method public onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;->mLastActivatedTime:Ljava/time/LocalDateTime;

    return-void
.end method
