.class final Lcom/android/server/location/GnssLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private handleInitialize()V
    .locals 13

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$5200()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$5300(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "GnssLocationProvider"

    const-string v2, "Native initialization failed at bootup"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$5400(Lcom/android/server/location/GnssLocationProvider;)V

    :goto_0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$2100(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$5500(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$5600(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$5700()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "sms"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string/jumbo v3, "localhost"

    const-string v4, "7275"

    invoke-virtual {v1, v3, v4}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->access$5800(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v3

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    const-string v3, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "GnssLocationProvider"

    const-string v5, "Malformed SUPL init mime type"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->access$5800(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$900()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GnssLocationProvider"

    const-string v3, "Skipped registration for SMS/WAP-PUSH messages because AGPS Ril in GPS HAL is not supported"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->access$5800(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v3}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {v3}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v5}, Lcom/android/server/location/GnssLocationProvider;->access$6000(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v6}, Lcom/android/server/location/GnssLocationProvider;->access$5900(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v5}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "passive"

    invoke-static {v10, v6, v7, v8, v9}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    new-instance v11, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    iget-object v12, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {v11, v12, v2}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v5, v10, v11, v2}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$4900(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    invoke-static {v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider;->access$4800(Lcom/android/server/location/GnssLocationProvider;ZLandroid/location/Location;)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$4400(Lcom/android/server/location/GnssLocationProvider;Z)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$4300(Lcom/android/server/location/GnssLocationProvider;I)V

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/net/InetAddress;

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$4200(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->handleInitialize()V

    goto :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$1300(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto :goto_1

    :pswitch_8
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$402(Lcom/android/server/location/GnssLocationProvider;I)I

    goto :goto_1

    :pswitch_9
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$4600(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V

    goto :goto_1

    :pswitch_a
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$4500(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_1

    :pswitch_b
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/NtpTimeHelper;->retrieveAndInjectNtpTime()V

    goto :goto_1

    :pswitch_c
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/Network;

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$4100(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V

    goto :goto_1

    :pswitch_d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v4, v2, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v5, v2, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    invoke-static {v3, v4, v5}, Lcom/android/server/location/GnssLocationProvider;->access$4000(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    goto :goto_1

    :pswitch_e
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$3800(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$3900(Lcom/android/server/location/GnssLocationProvider;)V

    nop

    :goto_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$5000(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string v1, "GnssLocationProvider"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WakeLock released by handleMessage("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3, v0}, Lcom/android/server/location/GnssLocationProvider;->access$5100(Lcom/android/server/location/GnssLocationProvider;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
