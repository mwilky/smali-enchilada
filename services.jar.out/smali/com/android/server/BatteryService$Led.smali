.class final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Led"
.end annotation


# static fields
.field private static final DELAY_UPDATE_LIGHT:I = 0x1f4

.field private static final MSG_UPDATE_LIGHT:I = 0x1


# instance fields
.field private mBatteryFastChargeARGB:I

.field private mBatteryFullARGB:I

.field private final mBatteryLedOff:I

.field private final mBatteryLedOn:I

.field private final mBatteryLight:Lcom/android/server/lights/Light;

.field private mBatteryLowARGB:I

.field private mBatteryMediumARGB:I

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLightHandler:Landroid/os/Handler;

.field private final mNotificationLight:Lcom/android/server/lights/Light;

.field private mScreenOn:Z

.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lights"    # Lcom/android/server/lights/LightsManager;

    .line 1282
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1244
    new-instance p1, Lcom/android/server/BatteryService$Led$1;

    invoke-direct {p1, p0}, Lcom/android/server/BatteryService$Led$1;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    .line 1251
    new-instance p1, Lcom/android/server/BatteryService$Led$2;

    invoke-direct {p1, p0}, Lcom/android/server/BatteryService$Led$2;-><init>(Lcom/android/server/BatteryService$Led;)V

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1283
    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    .line 1285
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1288
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0079

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1290
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e007a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1292
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0076

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1294
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0078

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 1296
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0077

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1300
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x508000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryFastChargeARGB:I

    .line 1303
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 1304
    .local p1, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1305
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1306
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    .line 1309
    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/BatteryService$Led;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;
    .param p1, "x1"    # Z

    .line 1221
    iput-boolean p1, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/BatteryService$Led;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BatteryService$Led;

    .line 1221
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public setLedColors(III)V
    .locals 3
    .param p1, "batteryLowARGB"    # I
    .param p2, "batteryMediumARGB"    # I
    .param p3, "batteryFullARGB"    # I

    .line 1272
    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1273
    iput p2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1274
    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1275
    const-string v0, "BatteryLed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBatteryLowARGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBatteryMediumARGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mBatteryFullARGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    return-void
.end method

.method public updateLightsLocked()V
    .locals 7

    .line 1317
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1318
    return-void

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$600(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 1327
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v0

    iget v0, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 1328
    .local v0, "level":I
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Landroid/hardware/health/V1_0/HealthInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 1337
    .local v1, "status":I
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->access$1800(Lcom/android/server/BatteryService;)I

    move-result v2

    const/4 v3, 0x2

    if-gt v0, v2, :cond_5

    .line 1339
    if-ne v1, v3, :cond_3

    .line 1341
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFastChargeARGB:I

    goto :goto_0

    .line 1342
    :cond_2
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1341
    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_4

    .line 1347
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/BatteryService$Led;->mScreenOn:Z

    if-eqz v2, :cond_4

    .line 1348
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1349
    return-void

    .line 1353
    :cond_4
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1356
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget v6, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    goto :goto_4

    .line 1359
    :cond_5
    const/4 v2, 0x5

    if-eq v1, v3, :cond_7

    if-ne v1, v2, :cond_6

    goto :goto_1

    .line 1390
    :cond_6
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_4

    .line 1370
    :cond_7
    :goto_1
    if-eq v1, v2, :cond_a

    const/16 v2, 0x63

    if-le v0, v2, :cond_8

    goto :goto_3

    .line 1384
    :cond_8
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget-object v3, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->access$1900(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFastChargeARGB:I

    goto :goto_2

    .line 1385
    :cond_9
    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1384
    :goto_2
    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_4

    .line 1377
    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 1392
    :goto_4
    return-void

    .line 1322
    .end local v0    # "level":I
    .end local v1    # "status":I
    :cond_b
    :goto_5
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 1323
    return-void
.end method
