.class Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;
.super Lcom/android/server/display/ColorDisplayService$AutoMode;
.source "ColorDisplayService.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwilightAutoMode"
.end annotation


# instance fields
.field private final mTwilightManager:Lcom/android/server/twilight/TwilightManager;

.field final synthetic this$0:Lcom/android/server/display/ColorDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/ColorDisplayService$1;)V

    const-class v0, Lcom/android/server/twilight/TwilightManager;

    invoke-static {p1, v0}, Lcom/android/server/display/ColorDisplayService;->access$1100(Lcom/android/server/display/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/twilight/TwilightManager;

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    return-void
.end method

.method private updateActivated(Lcom/android/server/twilight/TwilightState;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getLastActivatedTime()Ljava/time/LocalDateTime;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunrise()Ljava/time/LocalDateTime;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->sunset()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v3}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v5

    invoke-virtual {v1, v4}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v6

    xor-int/2addr v5, v6

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v5}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    :cond_1
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/ColorDisplayService;->access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, v0, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v2}, Lcom/android/server/display/ColorDisplayService;->access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-static {v1}, Lcom/android/server/display/ColorDisplayService;->access$1200(Lcom/android/server/display/ColorDisplayService;)Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0}, Lcom/android/server/twilight/TwilightManager;->getLastTwilightState()Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v0, p0}, Lcom/android/server/twilight/TwilightManager;->unregisterListener(Lcom/android/server/twilight/TwilightListener;)V

    return-void
.end method

.method public onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V
    .locals 3

    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTwilightStateChanged: isNight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;->updateActivated(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method
