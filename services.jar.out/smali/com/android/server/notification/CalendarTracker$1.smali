.class Lcom/android/server/notification/CalendarTracker$1;
.super Landroid/database/ContentObserver;
.source "CalendarTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/CalendarTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/CalendarTracker;


# direct methods
.method constructor <init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/CalendarTracker;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 273
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker$1;->this$0:Lcom/android/server/notification/CalendarTracker;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .line 283
    invoke-static {}, Lcom/android/server/notification/CalendarTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.CT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "u"    # Landroid/net/Uri;

    .line 276
    invoke-static {}, Lcom/android/server/notification/CalendarTracker;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.CT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker$1;->this$0:Lcom/android/server/notification/CalendarTracker;

    .line 277
    invoke-static {v2}, Lcom/android/server/notification/CalendarTracker;->access$100(Lcom/android/server/notification/CalendarTracker;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker$1;->this$0:Lcom/android/server/notification/CalendarTracker;

    invoke-static {v0}, Lcom/android/server/notification/CalendarTracker;->access$200(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/notification/CalendarTracker$Callback;->onChanged()V

    .line 279
    return-void
.end method
