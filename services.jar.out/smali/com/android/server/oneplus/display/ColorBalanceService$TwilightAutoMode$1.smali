.class Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode$1;->this$1:Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode$1;->this$1:Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->access$1800(Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;Ljava/lang/Boolean;)V

    return-void
.end method
